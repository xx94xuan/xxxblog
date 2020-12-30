import ReactOnRails from 'react-on-rails';

import LinkButton from './LinkButton.jsx';
import Header from './Header.jsx';

// This is how react_on_rails can see the Components in the browser.
ReactOnRails.register({
  LinkButton,
  Header,
});
