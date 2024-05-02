enum Auth {
  initial, // Initial state, before any authentication check
  authenticated, // User is signed in
  unauthenticated, // User is not signed in
  loading, // Authentication state is being checked or user data is being fetched
}
