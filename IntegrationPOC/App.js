import React, { Component } from 'react';
import {
  StyleSheet,
  View,
  Text,
  TouchableOpacity,
} from 'react-native';
import Demochart from './demochart';

import NativeCallProvider from './NativeCallProvider';

export default class Feed extends Component {
  constructor(props) {
    super(props);

    this.state = {
      isLoadChart: false
    };

    this.done = false;
  }

  _changeView() {
    this.done = true;
    NativeCallProvider.navigateToLandingPage('Hi!!! This is test');
  }

  _changeView1() {
    this.setState({ isLoadChart: true });
  }

  render() {
    return (
      this.state.isLoadChart ? <Demochart /> :
        <View style={styles.container}>
          <TouchableOpacity onPress={() => this._changeView()}>
            <Text color="#336699">Press to Change to Native View - demo 1</Text>
          </TouchableOpacity>
          <View style={{height:100}}/>
          <TouchableOpacity onPress={() => this._changeView1()}>
            <Text color="#336699">Press to Change to Native View - demo 2</Text>
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
}); 