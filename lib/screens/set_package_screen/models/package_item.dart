class PackageItem{
  final String name;
  final int quantity;

  PackageItem({required this.name, required this.quantity});
}

final List<PackageItem> packages = [
  PackageItem(name: 'Rice', quantity: 1),
  PackageItem(name: 'Fish', quantity: 1),
  PackageItem(name: 'Chicken', quantity: 1),
  PackageItem(name: 'Rice', quantity: 1),
  PackageItem(name: 'Rice', quantity: 1),
];