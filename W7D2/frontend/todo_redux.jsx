import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  // store.dispatch = addLoggingToDispatch(store);
  // store = applyMiddlewares(store, addLoggingToDispatch);
  //

  const root = document.getElementById('content');

  ReactDOM.render(<Root store={store} />, root);
});

  // const addLoggingToDispatch = (store)=>{
  //   const dispatched = store.dispatch;
  //   return (action)=>{
  //     console.log('pre-state:', store.getState());
  //     console.log('action:', action);
  //     dispatched(action);
  //     console.log('post-State:', store.getState());
  //   };
  // };

  // const addLoggingToDispatch = store => next => action =>{
  //   console.log('pre-state:', store.getState());
  //       console.log('action:', action);
  //       next(action);
  //       console.log('post-State:', store.getState());
  // };
  //
  // const applyMiddlewares = (store, ...middlewares)=>{
  //   let dispatch = store.dispatch;
  //   middlewares.forEach((middleware) => {
  //     dispatch = middleware(store(dispatch));
  //   });
  //   return Object.assign({},store,{dispatch});
  // };
