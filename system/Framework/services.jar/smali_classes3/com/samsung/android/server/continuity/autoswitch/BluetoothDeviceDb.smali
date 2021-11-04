.class Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb;
.super Ljava/lang/Object;
.source "BluetoothDeviceDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;
    }
.end annotation


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final BONDSTATE_DB_ADDR_SWITCHED:I = 0x4

.field private static final BONDSTATE_DB_BONDED:I = 0x2

.field private static final BONDSTATE_DB_RESTORED:I = 0x1

.field static final BT_BACKUP_PROVIDER_URI:Ljava/lang/String; = "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_BluetoothDeviceDb"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRestoredDevices(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 66
    const-string v0, "[MCF_DS_SYS]_BluetoothDeviceDb"

    const-string v7, "bond_state == 1 OR bond_state == 4"

    .line 69
    .local v7, "CLAUSE_ONLY_REMOTE_DEVICES":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v1

    .line 71
    .local v8, "restoredDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v9, "address"

    .line 72
    .local v9, "address":Ljava/lang/String;
    const-string v10, "timestamp"

    .line 73
    .local v10, "timestamp":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 75
    .local v11, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v1, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 77
    .local v12, "uri":Landroid/net/Uri;
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " DESC"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v12

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_37} :catch_8c

    .line 79
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_45

    .line 80
    :try_start_39
    const-string v2, "getRestoredDevices - query return null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_80

    .line 81
    nop

    .line 92
    if-eqz v1, :cond_44

    :try_start_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_44} :catch_8c

    .line 81
    :cond_44
    return-object v8

    .line 83
    :cond_45
    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestoredDevices - cursor count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "indexAddress":I
    :goto_64
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 88
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 89
    .local v3, "restoredDev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_78
    .catchall {:try_start_45 .. :try_end_78} :catchall_80

    .line 91
    nop

    .end local v3    # "restoredDev":Landroid/bluetooth/BluetoothDevice;
    goto :goto_64

    .line 92
    .end local v2    # "indexAddress":I
    :cond_7a
    if-eqz v1, :cond_7f

    :try_start_7c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_7c .. :try_end_7f} :catch_8c

    .line 95
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_7f
    goto :goto_95

    .line 77
    .restart local v1    # "c":Landroid/database/Cursor;
    :catchall_80
    move-exception v2

    if-eqz v1, :cond_8b

    :try_start_83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v3

    :try_start_88
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "CLAUSE_ONLY_REMOTE_DEVICES":Ljava/lang/String;
    .end local v8    # "restoredDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "timestamp":Ljava/lang/String;
    .end local v11    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    :cond_8b
    :goto_8b
    throw v2
    :try_end_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_88 .. :try_end_8c} :catch_8c

    .line 92
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v7    # "CLAUSE_ONLY_REMOTE_DEVICES":Ljava/lang/String;
    .restart local v8    # "restoredDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v9    # "address":Ljava/lang/String;
    .restart local v10    # "timestamp":Ljava/lang/String;
    .restart local v11    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_8c
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "getRestoredDevices - Occurs IllegalStateException"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 96
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_95
    return-object v8
.end method

.method static retrieveBackupDevices(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .local v0, "backupDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;>;"
    const-string v1, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_13

    .line 38
    return-object v0

    .line 41
    :cond_13
    const-string v8, "bond_state == 2 OR bond_state == 1 OR bond_state == 4"

    .line 45
    .local v8, "clause":Ljava/lang/String;
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    move-object v3, v1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_23} :catch_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_23} :catch_64

    .line 46
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_5e

    .line 47
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    :goto_28
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 49
    const-string v3, "address"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "address":Ljava/lang/String;
    if-nez v3, :cond_3b

    .line 51
    goto :goto_28

    .line 53
    :cond_3b
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_52

    .line 56
    nop

    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_28

    .line 45
    :catchall_52
    move-exception v3

    if-eqz v2, :cond_5d

    :try_start_55
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v4

    :try_start_5a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "backupDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;>;"
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "clause":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    :cond_5d
    :goto_5d
    throw v3

    .line 58
    .restart local v0    # "backupDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;>;"
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "clause":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_5e
    if-eqz v2, :cond_63

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_63} :catch_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_63} :catch_64

    .line 60
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_63
    goto :goto_7f

    .line 58
    :catch_64
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveBackupDevices - Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[MCF_DS_SYS]_BluetoothDeviceDb"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_7f
    return-object v0
.end method
