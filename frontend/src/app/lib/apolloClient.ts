import { ApolloClient, InMemoryCache, createHttpLink } from '@apollo/client';
import fetch from 'cross-fetch';

const httpLink = createHttpLink({
  uri: 'http://backend:3000/graphql',
  fetch,
  headers: {
    'Content-Type': 'application/json',
  },
});

const apolloClient = new ApolloClient({
  link: httpLink,
  cache: new InMemoryCache(),
  ssrMode: true, // SSR 用のモードを有効化
});

export { apolloClient };
