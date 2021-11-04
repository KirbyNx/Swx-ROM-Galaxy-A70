.class public Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;
.super Ljava/lang/Object;
.source "ApplicationRestrictionsChain.java"


# static fields
.field public static MANAGED_DB_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApplicationRestrictionsChain"

.field public static UNMANAGED_DB_UID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;->MANAGED_DB_UID:I

    .line 41
    const/16 v0, 0xa

    sput v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;->UNMANAGED_DB_UID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restrictions"    # Landroid/os/Bundle;

    .line 44
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v2, "keyChain":Landroid/os/Bundle;
    const-string v3, "com.android.settings"

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ef

    .line 48
    const-string v3, "ApplicationRestrictionsChain"

    const-string/jumbo v5, "packageName: com.android.settings"

    invoke-static {v3, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget v5, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;->MANAGED_DB_UID:I

    const-string v6, "KNOX_NDA"

    const-string/jumbo v7, "startActivity"

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 51
    .local v5, "startActivityInfoByte":[B
    if-nez v5, :cond_31

    .line 52
    sget v8, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsChain;->UNMANAGED_DB_UID:I

    invoke-virtual {v0, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 54
    :cond_31
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v6, "startActivityInfo":Landroid/os/Bundle;
    if-eqz v5, :cond_4b

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 57
    .local v7, "parcel":Landroid/os/Parcel;
    array-length v8, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 58
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 61
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 64
    .end local v7    # "parcel":Landroid/os/Parcel;
    :cond_4b
    if-eqz v6, :cond_1ec

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1ec

    .line 65
    const-string/jumbo v7, "startActivityInfo"

    invoke-static {v3, v7}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_61
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 67
    .local v8, "keyCode":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 69
    .local v9, "keyPressBundle":Landroid/os/Bundle;
    if-eqz v9, :cond_1df

    .line 70
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1dc

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 71
    .local v11, "pressType":Ljava/lang/String;
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "pkgName":Ljava/lang/String;
    if-eqz v12, :cond_1d2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1d2

    .line 73
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v15, "SEM_KEYCODE_USER/KEY_PRESS_LONG"

    const-string/jumbo v14, "value"

    move-object/from16 v17, v0

    .end local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .local v17, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v0, "grayout"

    const/16 v1, 0x3f7

    if-ne v13, v1, :cond_e3

    .line 74
    const-string v1, "SEM_KEYCODE_USER"

    invoke-static {v3, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_c7

    .line 76
    const-string v1, "SEM_KEYCODE_USER/KEY_PRESS_DOWN"

    invoke-static {v3, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v1, "xcover_short":Landroid/os/Bundle;
    invoke-virtual {v1, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v13, "short_press_key"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    .end local v1    # "xcover_short":Landroid/os/Bundle;
    :cond_c7
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x4

    if-ne v1, v13, :cond_e3

    .line 84
    invoke-static {v3, v15}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v1, "xcover_long":Landroid/os/Bundle;
    const/4 v13, 0x1

    invoke-virtual {v1, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v13, "long_press_key"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    .end local v1    # "xcover_long":Landroid/os/Bundle;
    :cond_e3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v13, 0x437

    if-ne v1, v13, :cond_12b

    .line 93
    const-string v1, "KEYCODE_EMERGENCY"

    invoke-static {v3, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_10d

    .line 95
    const-string v1, "KEYCODE_EMERGENCY/KEY_PRESS_DOWN"

    invoke-static {v3, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v1, "xcover_top_short":Landroid/os/Bundle;
    invoke-virtual {v1, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v13, "xcover_top_short_press_key"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    .end local v1    # "xcover_top_short":Landroid/os/Bundle;
    :cond_10d
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x4

    if-ne v1, v13, :cond_12b

    .line 104
    const-string v1, "KEYCODE_EMERGENCY/KEY_PRESS_LONG"

    invoke-static {v3, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v1, "xcover_top_long":Landroid/os/Bundle;
    const/4 v13, 0x1

    invoke-virtual {v1, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v13, "xcover_top_long_press_key"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    .end local v1    # "xcover_top_long":Landroid/os/Bundle;
    :cond_12b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v13, 0x1a

    if-ne v1, v13, :cond_1d4

    .line 113
    const-string v1, "KEYCODE_POWER"

    invoke-static {v3, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v13, 0x8

    if-ne v1, v13, :cond_19c

    .line 115
    const-string v1, "SEM_KEYCODE_USER/KEY_PRESS_DOUBLE"

    invoke-static {v3, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v1, "side_double_press":Landroid/os/Bundle;
    const/4 v13, 0x1

    invoke-virtual {v1, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v13, "1"

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v13, "function_key_double_press"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v13, "side_double_press_type":Landroid/os/Bundle;
    move-object/from16 v16, v1

    .end local v1    # "side_double_press":Landroid/os/Bundle;
    .local v16, "side_double_press":Landroid/os/Bundle;
    const-string v1, "2"

    invoke-virtual {v13, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "function_key_double_press_type"

    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v1, "side_double_press_quick_launch_camera":Landroid/os/Bundle;
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v4, "double_press_quick_launch_camera"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 130
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v4, "side_double_press_open_bixby":Landroid/os/Bundle;
    move-object/from16 v18, v1

    const/4 v1, 0x1

    .end local v1    # "side_double_press_quick_launch_camera":Landroid/os/Bundle;
    .local v18, "side_double_press_quick_launch_camera":Landroid/os/Bundle;
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    const-string v1, "double_press_open_bixby"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v1, "side_double_press_open_apps":Landroid/os/Bundle;
    move-object/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "side_double_press_open_bixby":Landroid/os/Bundle;
    .local v19, "side_double_press_open_bixby":Landroid/os/Bundle;
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "double_press_open_apps"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    .end local v1    # "side_double_press_open_apps":Landroid/os/Bundle;
    .end local v13    # "side_double_press_type":Landroid/os/Bundle;
    .end local v16    # "side_double_press":Landroid/os/Bundle;
    .end local v18    # "side_double_press_quick_launch_camera":Landroid/os/Bundle;
    .end local v19    # "side_double_press_open_bixby":Landroid/os/Bundle;
    :cond_19c
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1d4

    .line 140
    invoke-static {v3, v15}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v1, "side_long":Landroid/os/Bundle;
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string/jumbo v13, "function_key_long_press"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 146
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v13, "side_long_wake_bixby":Landroid/os/Bundle;
    invoke-virtual {v13, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    const-string/jumbo v14, "long_press_wake_bixby"

    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v14, "side_long_power_off":Landroid/os/Bundle;
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string/jumbo v0, "long_press_power_off"

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1d4

    .line 72
    .end local v1    # "side_long":Landroid/os/Bundle;
    .end local v13    # "side_long_wake_bixby":Landroid/os/Bundle;
    .end local v14    # "side_long_power_off":Landroid/os/Bundle;
    .end local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1d2
    move-object/from16 v17, v0

    .line 156
    .end local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v11    # "pressType":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1d4
    :goto_1d4
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v0, v17

    goto/16 :goto_7b

    .line 70
    .end local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1dc
    move-object/from16 v17, v0

    .end local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    goto :goto_1e1

    .line 69
    .end local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1df
    move-object/from16 v17, v0

    .line 158
    .end local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v8    # "keyCode":Ljava/lang/String;
    .end local v9    # "keyPressBundle":Landroid/os/Bundle;
    .restart local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :goto_1e1
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v0, v17

    goto/16 :goto_61

    .line 66
    .end local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1e9
    move-object/from16 v17, v0

    .end local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    goto :goto_1f1

    .line 64
    .end local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1ec
    move-object/from16 v17, v0

    .end local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    goto :goto_1f1

    .line 47
    .end local v5    # "startActivityInfoByte":[B
    .end local v6    # "startActivityInfo":Landroid/os/Bundle;
    .end local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1ef
    move-object/from16 v17, v0

    .line 161
    .end local v0    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v17    # "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :goto_1f1
    return-object v2
.end method
