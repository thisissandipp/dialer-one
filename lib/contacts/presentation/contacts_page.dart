import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one/contacts/contacts.dart';

class ContactsPage extends ConsumerWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = ref.watch(contactsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: contacts.when(
        data: (contacts) {
          if (contacts.isEmpty) {
            return const Center(child: Text('No contacts found.'));
          }
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              return ListTile(
                title: Text(contact.displayName),
                subtitle: Text('ID: ${contact.id}, Phone: ${contact.phoneNumbers}'),
              );
            },
          );
        },
        error: (err, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Failed to load contacts.\n$err',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
