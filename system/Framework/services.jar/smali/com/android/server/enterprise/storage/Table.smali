.class public Lcom/android/server/enterprise/storage/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field public mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation
.end field

.field public mForeignKeyName:Ljava/lang/String;

.field public mForeignReferKey:Ljava/lang/String;

.field public mForeignReferTable:Ljava/lang/String;

.field public mTableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "foreignReferTable"    # Ljava/lang/String;
    .param p3, "foreignReferKey"    # Ljava/lang/String;
    .param p4, "foreignKey"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public addColumn(Lcom/android/server/enterprise/storage/Column;)V
    .registers 3
    .param p1, "column"    # Lcom/android/server/enterprise/storage/Column;

    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public buildPrimaryKeys()Ljava/lang/String;
    .registers 7

    .line 69
    const-string v0, ""

    .line 71
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/storage/Column;

    .line 72
    .local v2, "column":Lcom/android/server/enterprise/storage/Column;
    iget-boolean v4, v2, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    if-eqz v4, :cond_2e

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .end local v2    # "column":Lcom/android/server/enterprise/storage/Column;
    :cond_2e
    goto :goto_8

    .line 78
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_44

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_45

    .line 79
    :cond_44
    const/4 v1, 0x0

    .line 78
    :goto_45
    return-object v1
.end method

.method public buildTableColumns()Ljava/lang/String;
    .registers 7

    .line 57
    const-string v0, ""

    .line 59
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/storage/Column;

    .line 60
    .local v2, "column":Lcom/android/server/enterprise/storage/Column;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .end local v2    # "column":Lcom/android/server/enterprise/storage/Column;
    goto :goto_8

    .line 64
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_42

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 65
    :cond_42
    const-string v1, ""

    .line 64
    :goto_44
    return-object v1
.end method

.method public getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation

    .line 83
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/storage/Column;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/storage/Column;

    .line 86
    .local v2, "column":Lcom/android/server/enterprise/storage/Column;
    iget-object v3, v2, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v2    # "column":Lcom/android/server/enterprise/storage/Column;
    :cond_22
    goto :goto_b

    .line 91
    :cond_23
    return-object v0
.end method
