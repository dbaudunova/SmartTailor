/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 54
///
/// Built on 2024-07-02 at 17:23 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get orderPlace => 'Разместить заказ';
	String get organization => 'Организация';
	String get profile => 'Профиль';
	String get registration => 'Регистрация';
	String get surname => 'Фамилия*';
	String get name => 'Имя*';
	String get FatherName => 'Отчество*';
	String get email => 'Почта*';
	String get phoneNum => 'Номер телефона*';
	String get rememberMe => 'Запомнить меня';
	String get register => 'Зарегистрироваться';
	String get sendPinCode => 'Отправлен 4-х значный код\nна указанную почту';
	String get repeatSendCode => 'Код введен неверно, попробуйте еще раз';
	String get repeatSendCodeTime => 'Отправить код повторно через';
	String get repeatSendCodeButton => 'Отправить код повторно';
	String get Enter => 'Войти';
	String get SmartTailor => 'SmartTailor';
	String get enterText => 'Мониторинг и управление\nшвейным производством';
	String get emailHintText => 'Введите электронный адрес';
	String get marketplace => 'Маркетплейс';
	String get equipment => 'Оборудование';
	String get service => 'Услуги';
	String get orders => 'Заказы';
	String get som => 'сом';
	String get equipmentDetail => 'Детали оборудования';
	String get orderDetail => 'Детали заказа';
	String get author => 'Автор объявления';
	String get acceptOrder => 'Принять заказ';
	String get buy => 'Купить';
	String get order => 'Заказ';
	String get orderDesc => 'Описание заказа';
	String get srok => 'Срок';
	String get nitki => 'Нитки';
	String get equipmentDesk => 'Описание инвентаря';
	String get needIronman => 'Требуется утюжник';
	String get serviceDesc => 'Мужские брюки';
	String get typeOrder => 'Тип объявления*';
	String get typeOrderHint => 'Оборудование,Заказ или Услуги';
	String get nameOrder => 'Название*';
	String get necessaryField => 'Обязательное поле';
	String get descriptionOrder => 'Описание*';
	String get addPhotos => 'Добавить фото*';
	String get max5photos => 'Максимальное количество фото 5';
	String get sizeFieldText => 'Только для типа объявления Заказ';
	String get maxWords => 'Максимум 1000 слов';
	String get sizes => 'Размеры*';
	String get ddmmyy => 'ДД/ММ/ГГ';
	String get lastDate => 'Крайняя дата выполнения';
	String get contactInfo => 'Контактная информация*';
	String get inputPhoneNumber => 'Введите номер телефона или почту';
	String get orderSumm => 'Сумма заказа*';
	String get inputDigits => 'Введите цифры';
	String get inputSize => 'Введите размер';
	String get cancel => 'Отмена';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'orderPlace': return 'Разместить заказ';
			case 'organization': return 'Организация';
			case 'profile': return 'Профиль';
			case 'registration': return 'Регистрация';
			case 'surname': return 'Фамилия*';
			case 'name': return 'Имя*';
			case 'FatherName': return 'Отчество*';
			case 'email': return 'Почта*';
			case 'phoneNum': return 'Номер телефона*';
			case 'rememberMe': return 'Запомнить меня';
			case 'register': return 'Зарегистрироваться';
			case 'sendPinCode': return 'Отправлен 4-х значный код\nна указанную почту';
			case 'repeatSendCode': return 'Код введен неверно, попробуйте еще раз';
			case 'repeatSendCodeTime': return 'Отправить код повторно через';
			case 'repeatSendCodeButton': return 'Отправить код повторно';
			case 'Enter': return 'Войти';
			case 'SmartTailor': return 'SmartTailor';
			case 'enterText': return 'Мониторинг и управление\nшвейным производством';
			case 'emailHintText': return 'Введите электронный адрес';
			case 'marketplace': return 'Маркетплейс';
			case 'equipment': return 'Оборудование';
			case 'service': return 'Услуги';
			case 'orders': return 'Заказы';
			case 'som': return 'сом';
			case 'equipmentDetail': return 'Детали оборудования';
			case 'orderDetail': return 'Детали заказа';
			case 'author': return 'Автор объявления';
			case 'acceptOrder': return 'Принять заказ';
			case 'buy': return 'Купить';
			case 'order': return 'Заказ';
			case 'orderDesc': return 'Описание заказа';
			case 'srok': return 'Срок';
			case 'nitki': return 'Нитки';
			case 'equipmentDesk': return 'Описание инвентаря';
			case 'needIronman': return 'Требуется утюжник';
			case 'serviceDesc': return 'Мужские брюки';
			case 'typeOrder': return 'Тип объявления*';
			case 'typeOrderHint': return 'Оборудование,Заказ или Услуги';
			case 'nameOrder': return 'Название*';
			case 'necessaryField': return 'Обязательное поле';
			case 'descriptionOrder': return 'Описание*';
			case 'addPhotos': return 'Добавить фото*';
			case 'max5photos': return 'Максимальное количество фото 5';
			case 'sizeFieldText': return 'Только для типа объявления Заказ';
			case 'maxWords': return 'Максимум 1000 слов';
			case 'sizes': return 'Размеры*';
			case 'ddmmyy': return 'ДД/ММ/ГГ';
			case 'lastDate': return 'Крайняя дата выполнения';
			case 'contactInfo': return 'Контактная информация*';
			case 'inputPhoneNumber': return 'Введите номер телефона или почту';
			case 'orderSumm': return 'Сумма заказа*';
			case 'inputDigits': return 'Введите цифры';
			case 'inputSize': return 'Введите размер';
			case 'cancel': return 'Отмена';
			default: return null;
		}
	}
}
