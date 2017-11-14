#===

iOSdeploymentTarget = "9.3"
currentSwiftVersion = "4"
companyIdentifier = "com.igortarasenko"
developmentTeamId = ""
testSuffix = "Tests"
testSuffixUI = "UI" + testSuffix

provProfAdHoc = ""
provProfAppStore = ""

#===

project.name = "CleanEvents"
project.class_prefix = "CE"
project.organization = "Igor Tarasenko"

#===

project.debug_configuration :Debug
project.release_configuration :Release
project.release_configuration :AppStore

#===

project.all_configurations.each do |configuration|
    configuration.settings["ENABLE_BITCODE"] = "YES"
    configuration.settings["SDKROOT"] = "iphoneos"
    configuration.settings["DEBUG_INFORMATION_FORMAT"] = "dwarf"
    configuration.settings["CODE_SIGN_IDENTITY[sdk=iphoneos*]"] = "iPhone Developer"
    configuration.settings["TARGETED_DEVICE_FAMILY"] = "1,2"
    configuration.settings["IPHONEOS_DEPLOYMENT_TARGET"] = iOSdeploymentTarget
    configuration.settings["VERSIONING_SYSTEM"] = "apple-generic"
    configuration.settings["GCC_NO_COMMON_BLOCKS"] = "YES"
    configuration.settings["GCC_WARN_ABOUT_RETURN_TYPE"] = "YES_ERROR"
    configuration.settings["GCC_WARN_UNINITIALIZED_AUTOS"] = "YES_AGGRESSIVE"
    configuration.settings["CLANG_WARN_DIRECT_OBJC_ISA_USAGE"] = "YES_ERROR"
    configuration.settings["CLANG_WARN_OBJC_ROOT_CLASS"] = "YES_ERROR"
    configuration.settings["SWIFT_OPTIMIZATION_LEVEL"] = "-Onone"
    configuration.settings["CURRENT_PROJECT_VERSION"] = "1" 
    configuration.settings["CLANG_WARN_INFINITE_RECURSION"] = "YES" 
    configuration.settings["CLANG_WARN_SUSPICIOUS_MOVE"] = "YES" 
    configuration.settings["ENABLE_STRICT_OBJC_MSGSEND"] = "YES" 
    configuration.settings["ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES"] = "$(inherited)"
    configuration.settings["DEFINES_MODULE"] = "YES"
    configuration.settings["CLANG_ENABLE_MODULES"] = "YES"
    configuration.settings["CLANG_ENABLE_OBJC_ARC"] = "YES"
    configuration.settings["SWIFT_VERSION"] = currentSwiftVersion
    
    if configuration.name == "Release"
        configuration.settings["DEBUG_INFORMATION_FORMAT"] = "dwarf-with-dsym"
        configuration.settings["SWIFT_OPTIMIZATION_LEVEL"] = "-Owholemodule"
    end 
end

#===

target do |target|
    target.name = project.name
    target.language = :swift
    target.type = :application
    target.platform = :ios
    target.deployment_target = iOSdeploymentTarget
    
    target.all_configurations.each do |configuration|
        configuration.product_bundle_identifier = companyIdentifier + "." + target.name
        configuration.supported_devices = :universal
        configuration.settings["INFOPLIST_FILE"] = "Info/" + target.name + ".plist"
        configuration.settings["PRODUCT_NAME"] = "$(TARGET_NAME)"
        configuration.settings["CODE_SIGN_ENTITLEMENTS"] = "Resources/CleanEvents.entitlements"
        # configuration.settings["FRAMEWORK_SEARCH_PATHS"] = "$(inherited)"
        configuration.settings["LIBRARY_SEARCH_PATHS"] = "$(inherited) $(SRCROOT)/Dependencies/**"
        configuration.settings["ASSETCATALOG_COMPILER_APPICON_NAME"] = "AppIcon"
        configuration.settings["SWIFT_OBJC_BRIDGING_HEADER"] = "Sources/ObjC/CleanEvents-Bridging-Header.h"
        configuration.settings["OTHER_LDFLAGS"] = "$(inherited) -ObjC"

        # make configuration name available in run time:
        configNameFlag = "CONFIG_" + configuration.name.upcase
        configuration.settings["GCC_PREPROCESSOR_DEFINITIONS"] = "$(inherited) " + configNameFlag + "=1" # Obj-C support
        configuration.settings["OTHER_SWIFT_FLAGS"] = "$(inherited) -D" + configNameFlag # Swift support
        configuration.settings["CODE_SIGN_IDENTITY[sdk=iphoneos*]"] = "iPhone Developer"
        configuration.settings["DEVELOPMENT_TEAM"] = developmentTeamId

        #=== Build Settings - Per-configuration

        if configuration.name == "Debug"
            configuration.settings["CODE_SIGN_ENTITLEMENTS"] = "Resources/CleanEvents-test.entitlements"
        end

        #===

        if configuration.name == "Release"
            configuration.settings["PROVISIONING_PROFILE"] = provProfAdHoc
        end

        #===

        if configuration.name == "AppStore"
            configuration.settings["PROVISIONING_PROFILE"] = provProfAppStore
        end
    end

    #=== Extra System Frameworks

    target.system_frameworks << "AdSupport"
    target.system_frameworks << "QuartzCore"

    #=== Source Files

    target.include_files = ["Sources/**/*.*"]
    target.include_files << "Dependencies/**/*.*"
    target.include_files << "Resources/**/*.*"

    #=== Unit Tests

    unit_tests_for target do |test_target|
        test_target.name = target.name + testSuffix
        test_target.all_configurations.each do |configuration|
            configuration.settings["INFOPLIST_FILE"] = "Info/" + test_target.name + ".plist"
        end
        test_target.include_files = [testSuffix + "/**/*.*"] 
    end

    #=== UI Tests

    ui_tests_for target do |test_target|
        test_target.name = target.name + testSuffixUI
        test_target.all_configurations.each do |configuration|
            configuration.settings["INFOPLIST_FILE"] = "Info/" + test_target.name + ".plist"
        end
        test_target.include_files = [testSuffixUI + "/**/*.*"]
    end
end
