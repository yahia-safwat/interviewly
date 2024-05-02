class SubcategoryEntity {
  final String id;
  final String name;
  final String parentCategoryId;
  final DateTime createdAt;

  SubcategoryEntity({
    required this.id,
    required this.name,
    required this.parentCategoryId,
    required this.createdAt,
  });

  SubcategoryEntity copyWithEntity({
    String? id,
    String? name,
    String? parentCategoryId,
    DateTime? createdAt,
  }) {
    return SubcategoryEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      parentCategoryId: parentCategoryId ?? this.parentCategoryId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
