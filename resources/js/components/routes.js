import React from 'react';
import { Route, Switch } from 'react-router-dom';

import Homepage from 'homepage';

const Routes = () => (
  <Switch>
    <Route exact path="/" component={Homepage} />
  </Switch>
)

export default Routes
