.class public Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
.super Ljava/lang/Object;
.source "EnterpriseDumpHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 60
    return-void
.end method

.method private readColumns(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selectionValues"    # Landroid/content/ContentValues;

    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 98
    .local v3, "cv":Landroid/content/ContentValues;
    array-length v4, p3

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v4, :cond_45

    aget-object v6, p3, v5

    .line 99
    .local v6, "column":Ljava/lang/String;
    const-string v7, "   "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .end local v6    # "column":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 105
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_45
    goto :goto_15

    .line 106
    :cond_46
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 109
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_54
    return-void
.end method


# virtual methods
.method public dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " table]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "generic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 74
    const-string/jumbo v0, "name"

    const-string/jumbo v1, "value"

    const-string v2, "containerID"

    const-string/jumbo v3, "userID"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "genericColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 82
    .local v2, "selectionValues":Landroid/content/ContentValues;
    array-length v3, p3

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_4e

    aget-object v5, p3, v4

    .line 83
    .local v5, "column":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v6

    .line 84
    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->readColumns(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 82
    .end local v5    # "column":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 87
    .end local v1    # "genericColumns":[Ljava/lang/String;
    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_4e
    goto :goto_53

    .line 88
    :cond_4f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->readColumns(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 90
    :goto_53
    return-void
.end method
