import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one/contacts/contacts.dart';
import 'package:one/utils/utils.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ContactsPage extends ConsumerWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupedContacts = ref.watch(groupedContactsProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ContactsAppBar(),
          groupedContacts.when(
            data: (data) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final group = data.keys.elementAt(index);
                  final contacts = data[group]!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GroupHeader(letter: group),
                      ...contacts.map((c) => ContactTile(contact: c)),
                    ],
                  );
                },
                childCount: data.length,
              ),
            ),
            error: (e, _) => SliverFillRemaining(
              child: Center(
                child: Text('Error loading contacts'.hardcoded),
              ),
            ),
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  const ContactTile({required this.contact, super.key});
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final shadTheme = ShadTheme.of(context);
    final displayPhoto = contact.displayPhoto;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Theme(
        data: theme.copyWith(
          highlightColor: shadTheme.colorScheme.input,
        ),
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          leading: displayPhoto != null && displayPhoto.isNotEmpty
              ? ShadAvatar(
                  displayPhoto,
                  size: const Size.fromRadius(16),
                )
              : const ShadAvatar(
                  LucideIcons.user500,
                  size: Size.fromRadius(16),
                ),
          title: Text(
            contact.displayName,
            style: shadTheme.textTheme.p.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class GroupHeader extends StatelessWidget {
  const GroupHeader({required this.letter, super.key});
  final String letter;

  @override
  Widget build(BuildContext context) {
    final shadTheme = ShadTheme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
      child: Text(
        letter,
        style: shadTheme.textTheme.muted.copyWith(
          fontSize: 14,
          color: shadTheme.colorScheme.mutedForeground,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ContactsAppBar extends StatelessWidget {
  const ContactsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const topPadding = kToolbarHeight + 4;
    final theme = Theme.of(context);
    final shadTheme = ShadTheme.of(context);

    return SliverAppBar(
      backgroundColor: shadTheme.colorScheme.primaryForeground,
      expandedHeight: 160,
      toolbarHeight: 0,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Padding(
          padding: const EdgeInsets.fromLTRB(12, topPadding, 12, 12),
          child: Column(
            spacing: 20,
            children: [
              Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: ShadInput(
                      placeholder: Text('Search'.hardcoded),
                      leading: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(LucideIcons.search),
                      ),
                      trailing: ShadButton.ghost(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.zero,
                        trailing: const Icon(LucideIcons.mic),
                        onPressed: () {},
                      ),
                      decoration: ShadDecoration(
                        color: shadTheme.colorScheme.input,
                        disableSecondaryBorder: true,
                      ),
                    ),
                  ),
                  SizedBox.square(
                    dimension: 42,
                    child: ShadButton.secondary(
                      backgroundColor: shadTheme.colorScheme.input,
                      padding: EdgeInsets.zero,
                      child: const Icon(LucideIcons.plus500),
                    ),
                  ),
                  SizedBox.square(
                    dimension: 42,
                    child: ShadButton.secondary(
                      backgroundColor: shadTheme.colorScheme.input,
                      padding: EdgeInsets.zero,
                      child: const Icon(LucideIcons.ellipsis500),
                    ),
                  ),
                ],
              ),
              Theme(
                data: theme.copyWith(
                  highlightColor: shadTheme.colorScheme.input,
                ),
                child: ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  splashColor: shadTheme.colorScheme.input,
                  leading: ShadAvatar(
                    'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4'
                        .hardcoded,
                    size: const Size.fromRadius(20),
                  ),
                  title: Text(
                    'Sandip Pramanik'.hardcoded,
                    style: shadTheme.textTheme.large,
                  ),
                  subtitle: Text(
                    '837 Contacts'.hardcoded,
                    style: shadTheme.textTheme.muted.copyWith(
                      fontSize: 14,
                      color: shadTheme.colorScheme.mutedForeground,
                    ),
                  ),
                  trailing: const Icon(LucideIcons.chevronRight500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
