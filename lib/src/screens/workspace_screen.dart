import 'package:flutter/material.dart';

class WorkspaceScreen extends StatelessWidget {
  const WorkspaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: isDesktop ? null : AppBar(title: const Text('ThreadVault')),
      drawer: isDesktop ? null : const BrandSidebar(),
      body: Row(
        children: [
          if (isDesktop) const BrandSidebar(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Studio Overview',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Welcome to Young Creatives_Hideous Facts HQ.',
                    style: TextStyle(color: Colors.grey[400], fontSize: 16),
                  ),
                  const SizedBox(height: 40),
                  // Placeholder for future dashboard widgets
                  Expanded(
                    child: Center(
                      child: Icon(
                        Icons.layers_outlined,
                        size: 100,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BrandSidebar extends StatelessWidget {
  const BrandSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: Theme.of(context).colorScheme.surface,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Text(
              'THREADVAULT.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _SidebarItem(icon: Icons.dashboard, title: 'Studio Overview', isActive: true),
          _SidebarItem(icon: Icons.checkroom, title: 'Drop Planner'),
          _SidebarItem(icon: Icons.straighten, title: 'Sizing Calculator'),
          _SidebarItem(icon: Icons.palette_outlined, title: 'Color Palettes'),
          _SidebarItem(icon: Icons.coffee, title: 'Coffee Concepts'),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;

  const _SidebarItem({
    required this.icon,
    required this.title,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
      leading: Icon(
        icon,
        color: isActive ? Theme.of(context).colorScheme.primary : Colors.grey[500],
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.grey[500],
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () {
        // Navigation logic will go here later
      },
    );
  }
}