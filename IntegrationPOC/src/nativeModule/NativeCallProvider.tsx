import {NativeModules, NativeEventEmitter} from 'react-native';

const nativeCallModule = NativeModules.NativeIosModule;

class NativeCallProvider extends NativeEventEmitter {
  constructor(nativeModule: any) {
    super(nativeModule);
  }

  navigateToNative= (value: string): void => {
    if (value) {
      nativeCallModule.navigateToNativePage(value);
    }
  };

}

 export default new NativeCallProvider(nativeCallModule);
