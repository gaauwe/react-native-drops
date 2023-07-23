# react-native-drops (WIP)

> This is a React Native implementation of [Drops](https://github.com/omaralbeik/Drops); a framework for showing alerts like the one used when copying from pasteboard or connecting Apple pencil.

[![Generic badge](https://img.shields.io/badge/Made%20with-love-red.svg)](https://shields.io/)

<p float="left">
  <img src="./assets/drop.gif" width="30%" height="30%">
</p>

## Getting started

```bash
npm install https://github.com/gaauwe/react-native-drops --save
```

or

```bash
yarn add https://github.com/gaauwe/react-native-drops
```

For now you need to manually add Drop to your applications Podfile

```
pod 'Drops', :git => 'https://github.com/omaralbeik/Drops.git', :tag => '1.6.0'
```

_Don't forget to run `cd ios && pod install && cd ..` after that !_

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-drops` and add `RNDrops.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNDrops.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

## Usage

```jsx
import React from "react";
import { Button, StyleSheet, View } from "react-native";
import Drop from "react-native-drops";

export default function App() {
  const showDrop = () => {
    Drop({
      title: "Subscribed",
      subtitle: `Subscribed for future updates`,
      icon: "heart.circle.fill",
    });
  };

  return (
    <View style={styles.container}>
      <Button title="Show Drop" onPress={showDrop} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
  },
});
```

## Credits

This is simply a React Native wrapper around Drops:

- Drops 💧 - [omaralbeik](https://github.com/omaralbeik/Drops)
