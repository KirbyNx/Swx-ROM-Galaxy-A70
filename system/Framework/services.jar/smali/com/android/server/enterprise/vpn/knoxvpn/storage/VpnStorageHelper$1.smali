.class Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;
.super Ljava/lang/Object;
.source "VpnStorageHelper.java"

# interfaces
.implements Lcom/android/server/enterprise/storage/TableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    .line 100
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableFound(Lcom/android/server/enterprise/storage/Table;)V
    .registers 12
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .line 103
    const-string v0, "KnoxVpn.StorageHelper"

    const/4 v1, 0x0

    .line 105
    .local v1, "name":Ljava/lang/String;
    :try_start_3
    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    move-object v1, v2

    .line 106
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 107
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 108
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 109
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    goto :goto_73

    .line 111
    :cond_1e
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 112
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    invoke-static {v2, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v2

    .line 114
    .local v2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/storage/Column;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/storage/Column;

    .line 115
    .local v4, "column":Lcom/android/server/enterprise/storage/Column;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "ALTER TABLE %s ADD COLUMN %s;"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    .line 116
    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 115
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    .end local v4    # "column":Lcom/android/server/enterprise/storage/Column;
    goto :goto_30

    .line 119
    :cond_55
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->access$600()Z

    move-result v3

    if-eqz v3, :cond_73

    const-string/jumbo v3, "onTableFound Altered Table %s with Columns %d"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 119
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_73} :catch_74

    .line 126
    .end local v2    # "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/storage/Column;>;"
    :cond_73
    :goto_73
    goto :goto_8e

    .line 124
    :catch_74
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " creation/update EX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8e
    return-void
.end method
