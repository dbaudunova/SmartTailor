library io_ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/date_picker_widget.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/show_action_sheet_button.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/size_selection_widget.dart';
import 'package:neobis_smart_tailor/gen/fonts.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

// /// Widgets
part 'widgets/text_form_field_widget.dart';
part 'widgets/elevated_button_widget.dart';
// /// Shared
part 'shared/app_colors.dart';
part 'shared/app_props.dart';
part 'shared/app_styles.dart';
