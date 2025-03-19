module MyModule::DecentralizedLogin {
    
    use aptos_framework::signer;
    
    /// Struct representing a registered user.
    struct User has key, store {}

    /// Function to register a user.
    public fun register_user(user: &signer) {
        let address = signer::address_of(user);
        move_to<User>(user, User {});
    }

    /// Function to check if a user is registered.
    public fun is_registered(user_address: address): bool {
        exists<User>(user_address)
    }
}
