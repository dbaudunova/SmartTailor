import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/shared/app_constants.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/bloc/positions_bloc.dart';

class PositionsWidgetContent extends StatefulWidget {
  const PositionsWidgetContent({super.key});

  @override
  State<PositionsWidgetContent> createState() => _PositionsWidgetContentState();
}

class _PositionsWidgetContentState extends State<PositionsWidgetContent> {
  final Map<int, bool> _expandedPositions = {};
  var actionsMap = Constants.actionsMap;

  @override
  void initState() {
    _bloc.add(const PositionsEvent.getAllPositions());
    super.initState();
  }

  PositionsBloc get _bloc => context.read<PositionsBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PositionsBloc, PositionsState>(
      builder: (context, state) {
        var positions = state.positions;
        return state.stateStatus != const StateStatus.loading()
            ? positions.isNotEmpty
                ? _buildListPositions(positions)
                : _buildEmptyPositionsList()
            : const Center(child: CircularProgressIndicator());
      },
    );
  }

  Stack _buildListPositions(List<PositionEntity> positions) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Должности',
              style: AppTextStyle.textField16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemBuilder: (context, index) {
                  var isExpanded = _expandedPositions[index] ?? false;
                  return Column(
                    children: [
                      _buildCard(index, isExpanded, positions),
                      if (isExpanded) _builRightsList(positions, index),
                    ],
                  );
                },
                itemCount: positions.length,
              ),
            ),
          ],
        ),
        const AddPositionButton(),
      ],
    );
  }

  Container _builRightsList(List<PositionEntity> positions, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppProps.kSmallMargin),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, ind) {
          var accessRight = positions[index].accessRights![ind];
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              actionsMap[accessRight] ?? accessRight,
              style: AppTextStyle.textField16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        },
        itemCount: positions[index].accessRights!.length,
      ),
    );
  }

  Container _buildCard(int index, bool isExpanded, List<PositionEntity> positions) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppProps.kSmallMargin,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      height: 48,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _expandedPositions[index] = !isExpanded;
          });
        },
        child: Row(
          children: [
            Text(
              actionsMap[positions[index].weight!] ?? positions[index].weight!,
              style: AppTextStyle.textField16.copyWith(
                fontWeight: FontWeight.w900,
                color: AppColors.darkBlue,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              actionsMap[positions[index].positionName!] ?? positions[index].positionName!,
              style: AppTextStyle.textField16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Icon(
              isExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
            ),
          ],
        ),
      ),
    );
  }

  Stack _buildEmptyPositionsList() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Text(
            'У вас пока нет должностей',
            style: AppTextStyle.textField16.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const AddPositionButton(),
      ],
    );
  }
}

class AddPositionButton extends StatelessWidget {
  const AddPositionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButtonWidget(
          text: 'Добавить должность',
          onTap: () {
            AutoRouter.of(context).push(const PositionsRoute());
          },
        ),
      ),
    );
  }
}
