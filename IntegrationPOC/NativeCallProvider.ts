import {NativeModules, NativeEventEmitter} from 'react-native';

const nativeCallModule = NativeModules.NativeOpenPageModule;

class NativeCallProvider extends NativeEventEmitter {
  constructor(nativeModule: any) {
    super(nativeModule);
  }

  navigateToLandingPage = (value: string): void => {
    if (value) {
      nativeCallModule.navigateToLandingPage(value);
    }
  };
}

export default new NativeCallProvider(nativeCallModule);
