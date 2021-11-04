.class public Lcom/samsung/android/mcf/external/BluetoothBackupDB;
.super Ljava/lang/Object;
.source "BluetoothBackupDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BONDSTATE_DB_ADDR_SWITCHED:I = 0x4

.field public static final BONDSTATE_DB_BONDED:I = 0x2

.field public static final BONDSTATE_DB_DELETED:I = 0x3

.field public static final BONDSTATE_DB_RESTORED:I = 0x1

.field public static final BONDSTATE_DB_UNBONDED:I = 0x0

.field public static final BOND_STATE:Ljava/lang/String; = "bond_state"

.field public static final MANUFACTURERDATA:Ljava/lang/String; = "manufacturerdata"

.field public static final TAG:Ljava/lang/String; = "BluetoothBackupDB"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;",
            ">;"
        }
    .end annotation

    .line 32
    const-string v0, "retrieveBackupDataFromDB "

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    const-string v2, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz p0, :cond_d1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_19

    goto/16 :goto_d1

    :cond_19
    const-string v2, "BluetoothBackupDB"

    if-nez p1, :cond_28

    .line 43
    const-string p1, "retrieveBackupDataFromDB"

    const-string v3, " query restored device"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bond_state == 1 OR bond_state == 4"

    move-object v6, p1

    goto :goto_2b

    .line 37
    :cond_28
    const-string p1, "bond_state == 2"

    move-object v6, p1

    .line 48
    :goto_2b
    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_37} :catch_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_37} :catch_c7

    if-eqz p0, :cond_c1

    .line 52
    :try_start_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cursor count: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Columns : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "address"

    .line 54
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const-string v3, "manufacturerdata"

    .line 55
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "bond_state"

    .line 56
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 58
    :goto_72
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_c1

    .line 59
    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    invoke-direct {v5}, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;-><init>()V

    .line 60
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 61
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    .line 62
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mBondState:I

    .line 64
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_39 .. :try_end_92} :catchall_b3

    const-string v6, " retrieveBackupDataFromDB backup "

    .line 66
    :try_start_94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mBondState:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b2
    .catchall {:try_start_94 .. :try_end_b2} :catchall_b3

    goto :goto_72

    :catchall_b3
    move-exception p1

    .line 48
    :try_start_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v3

    if-eqz p0, :cond_c0

    .line 71
    :try_start_b8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    goto :goto_c0

    :catchall_bc
    move-exception p0

    :try_start_bd
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c0
    :goto_c0
    throw v3

    :cond_c1
    if-eqz p0, :cond_d1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_c6
    .catch Ljava/lang/IllegalStateException; {:try_start_bd .. :try_end_c6} :catch_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd .. :try_end_c6} :catch_c7

    goto :goto_d1

    :catch_c7
    move-exception p0

    goto :goto_ca

    .line 72
    :catch_c9
    move-exception p0

    :goto_ca
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    :goto_d1
    return-object v1
.end method
