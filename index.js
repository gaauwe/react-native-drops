import { NativeModules } from 'react-native';
const { RNDrops } = NativeModules;

/**
 * Display toast.
 */
const Drop = (props) => {
	RNDrops.show(props)
}

module.exports = Drop;
