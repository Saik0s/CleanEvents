apple_binary(
    name='Binary',
    srcs = glob([
      'Sources/**/*.swift',
    ]),
    # deps=[
    #     '//Dependency:RxCocoa',
    #     '//Dependency:RxSwift',
    # ],
    frameworks = [
      '$SDKROOT/System/Library/Frameworks/Foundation.framework',
      '$SDKROOT/System/Library/Frameworks/UIKit.framework',
      '$SDKROOT/System/Library/Frameworks/Accelerate.framework',
      '$SDKROOT/System/Library/Frameworks/CoreGraphics.framework',
      '$SDKROOT/System/Library/Frameworks/ImageIO.framework',
      '$SDKROOT/System/Library/Frameworks/QuartzCore.framework',
      '//Dependency:RxCocoa',
      '//Dependency:RxSwift',
    ],
    configs=DEFAULT_BUILD_CONFIGURATIONS
)

apple_bundle(
    name='Bundle',
    binary=':Binary',
    extension='app',
    info_plist='Info.plist',
    info_plist_substitutions={
        'EXECUTABLE_NAME': 'CleanEvents',
        'PRODUCT_BUNDLE_IDENTIFIER': 'com.igortarasenko.CleanEvents',
        'PRODUCT_NAME': 'CleanEvents',
    },
    # deps=[
    #     '//Dependency:RxCocoa',
    #     '//Dependency:RxSwift',
    # ],

    visibility=['PUBLIC']
)

apple_test(
  name = 'MyTest',
  info_plist = 'MyTest-Info.plist',
  preprocessor_flags = ['-fobjc-arc'],
  srcs = [
    'MyTest.m',
  ],
  deps = [
    ':MyLibrary',
  ],
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/Foundation.framework',
    '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    '$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework',
  ],
)

apple_package(
    name='Package',
    bundle=':Bundle'
)

apple_test(
    name = "LibTest",
    srcs = ["Test/Dummy.swift"],
    frameworks = [
        "$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework",
        "$SDKROOT/System/Library/Frameworks/Foundation.framework",
    ],
    info_plist = "Test/LibTest.plist",
    swift_version = "4",
)