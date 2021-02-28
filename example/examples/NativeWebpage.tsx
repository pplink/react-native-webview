import React, {Component} from 'react';
import {View} from 'react-native';

import WebView from 'react-native-pagecall-webview';

type Props = {};
type State = {};

export default class NativeWebpage extends Component<Props, State> {
  state = {};

  render() {
    return (
      <View style={{height: 600}}>
        <WebView
          //source={{uri: 'https://infinite.red'}}
          source={{uri: 'https://pplink.net/call_new/mobileTestRoomId0225n'}}
          style={{width: '100%', height: '100%'}}
          // setSupportMultipleWindows={false}
        />
      </View>
    );
  }
}
