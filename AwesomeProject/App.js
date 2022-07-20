import React, {Component} from 'react';
import {
  StyleSheet,
  View,
  NativeModules,
  Text,
  TouchableOpacity,
} from 'react-native';
export default class Feed extends Component {
  constructor(props) {
    super(props);
    this.done = false;
  }
  _changeView() {
    this.done = true;
    NativeCallProvider.navigateToLandingPage('Hi...from RN')
  }
  render() {
    return (
      <View style={styles.container}>
        <TouchableOpacity onPress={() => this._changeView()}>
          <Text color="#336699">Press to Change to Native View</Text>
        </TouchableOpacity>
      </View>
    );
  }
}
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'pink',
    alignItems: 'center',
    justifyContent: 'center',
  },
}); // import React from 'react';
// import {NativeModules, Button, View} from 'react-native';

// const NewModuleButton = () => {
//  // const {RNHello} = NativeModules;
//   // const {ChartView} = NativeModules;
//   const onPress = () => {
//     //RNHello.createCalendarEvent('testName', 'testLocation');
//   };
//   const onClick = () => {
//     console.log('happy now');
//   };

//   return (
//     <>
//       <View

//         style={{alignItems: 'center', alignContent: 'center', paddingTop: 90}}>
//         <Button
//           title="Click to invoke your native module!"
//           color="#841584"
//           onPress={onPress}
//         />
//       </View>
//       {/* <ChartView
//         status={true}
//         onClick={onClick}
//         style={{width: 100, height: 100}}
//       /> */}
//     </>
//   );
// };

// export default NewModuleButton;
