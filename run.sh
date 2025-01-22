xcodebuild archive -project XMPPFramework.xcodeproj -scheme "XMPPFramework (iOS)" -destination "generic/platform=iOS" -destination "generic/platform=iOS Simulator" -archivePath "archives/XMPPFramework" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
rm -rf xcframeworks
xcodebuild -create-xcframework -archive archives/XMPPFramework.xcarchive -framework XMPPFramework.framework -output xcframeworks/XMPPFramework.xcframework 
xcodebuild -create-xcframework -archive archives/XMPPFramework.xcarchive -framework CocoaAsyncSocket.framework -output xcframeworks/CocoaAsyncSocket.xcframework
xcodebuild -create-xcframework -archive archives/XMPPFramework.xcarchive -framework CocoaLumberjack.framework -output xcframeworks/CocoaLumberjack.xcframework
xcodebuild -create-xcframework -archive archives/XMPPFramework.xcarchive -framework KissXML.framework -output xcframeworks/KissXML.xcframework
xcodebuild -create-xcframework -archive archives/XMPPFramework.xcarchive -framework libidn.framework -output xcframeworks/libidn.xcframework
