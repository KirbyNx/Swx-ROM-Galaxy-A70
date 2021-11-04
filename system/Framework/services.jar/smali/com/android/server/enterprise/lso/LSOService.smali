.class public Lcom/android/server/enterprise/lso/LSOService;
.super Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final CUSTOM_LAYER:I = 0x2

.field private static final DEBUG:Z

.field private static final DEFAULT_LAYER:I = 0x1

.field private static final EMERGENCY_PHONE_LAYER:I = 0x3

.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final RESET_ALL_LAYER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LSOService"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

.field private mOverlayAdminUid:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 86
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 108
    new-instance v0, Lcom/android/server/enterprise/lso/LSOService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/lso/LSOService$1;-><init>(Lcom/android/server/enterprise/lso/LSOService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    .line 125
    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 127
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 131
    :cond_33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 133
    .local v0, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_5f

    .line 136
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_65

    .line 138
    :cond_5f
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 140
    :goto_65
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/knox/lockscreen/LSOItemData;

    iput-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 141
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6b
    const/4 v2, 0x3

    if-gt v1, v2, :cond_7b

    .line 142
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v3

    aput-object v3, v2, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 144
    .end local v1    # "i":I
    :cond_7b
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/lso/LSOService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/lso/LSOService;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    return-void
.end method

.method private copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "path"    # Ljava/lang/String;

    .line 751
    const-string v0, "failed to close outputstream"

    const-string v1, "failed to close inputstream"

    const-string v2, "LSOService"

    const-string v3, "/data/system/enterprise"

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 752
    return-object v4

    .line 754
    :cond_10
    const-string v3, "/data/system/enterprise/temp"

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 755
    return-object v4

    .line 757
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/temp/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "candidatePath":Ljava/lang/String;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 763
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 764
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 766
    .local v7, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_39
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v8

    .line 767
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 768
    :goto_49
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "length":I
    if-lez v8, :cond_55

    .line 769
    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_49

    .line 772
    :cond_55
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_58} :catch_6e
    .catchall {:try_start_39 .. :try_end_58} :catchall_6c

    .line 777
    nop

    .line 779
    :try_start_59
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 782
    goto :goto_61

    .line 780
    :catch_5d
    move-exception v4

    .line 781
    .local v4, "ex":Ljava/io/IOException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_61
    nop

    .line 786
    :try_start_62
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 789
    :goto_65
    goto :goto_6b

    .line 787
    :catch_66
    move-exception v1

    .line 788
    .local v1, "ex":Ljava/io/IOException;
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ex":Ljava/io/IOException;
    goto :goto_65

    .line 792
    :goto_6b
    return-object v3

    .line 777
    .end local v9    # "length":I
    :catchall_6c
    move-exception v4

    goto :goto_8a

    .line 773
    :catch_6e
    move-exception v8

    .line 774
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_6f
    const-string v9, "copyFileFromParcel() : failed to copy image from parcel "

    invoke-static {v2, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_6c

    .line 775
    nop

    .line 777
    if-eqz v6, :cond_7f

    .line 779
    :try_start_77
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 782
    goto :goto_7f

    .line 780
    :catch_7b
    move-exception v9

    .line 781
    .local v9, "ex":Ljava/io/IOException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v9    # "ex":Ljava/io/IOException;
    :cond_7f
    :goto_7f
    if-eqz v7, :cond_89

    .line 786
    :try_start_81
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 789
    goto :goto_89

    .line 787
    :catch_85
    move-exception v1

    .line 788
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_89
    :goto_89
    return-object v4

    .line 777
    .end local v8    # "ex":Ljava/lang/Exception;
    :goto_8a
    if-eqz v6, :cond_94

    .line 779
    :try_start_8c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 782
    goto :goto_94

    .line 780
    :catch_90
    move-exception v8

    .line 781
    .local v8, "ex":Ljava/io/IOException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_94
    :goto_94
    if-eqz v7, :cond_9e

    .line 786
    :try_start_96
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 789
    goto :goto_9e

    .line 787
    :catch_9a
    move-exception v1

    .line 788
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_9e
    :goto_9e
    throw v4
.end method

.method private declared-synchronized deleteFiles(I)V
    .registers 8
    .param p1, "layer"    # I

    monitor-enter p0

    .line 603
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_70

    .line 605
    .local v0, "token":J
    if-nez p1, :cond_2c

    .line 606
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2b

    .line 607
    :try_start_b
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_29
    .catchall {:try_start_b .. :try_end_24} :catchall_27

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 615
    .end local v2    # "i":I
    :catchall_27
    move-exception v2

    goto :goto_6c

    .line 612
    :catch_29
    move-exception v2

    goto :goto_4c

    .line 606
    :cond_2b
    goto :goto_45

    .line 610
    :cond_2c
    :try_start_2c
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/lso/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_45} :catch_4b
    .catchall {:try_start_2c .. :try_end_45} :catchall_49

    .line 615
    :goto_45
    :try_start_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_70

    .line 616
    goto :goto_6a

    .line 615
    .end local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    :catchall_49
    move-exception v2

    goto :goto_6c

    .line 612
    :catch_4b
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/Exception;
    :goto_4c
    :try_start_4c
    const-string v3, "LSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFiles() : failed layer - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_49

    .line 615
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_70

    .line 616
    nop

    .line 617
    :goto_6a
    monitor-exit p0

    return-void

    .line 615
    :goto_6c
    :try_start_6c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw v2
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    .line 602
    .end local v0    # "token":J
    .end local p1    # "layer":I
    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteWallpaperFiles()V
    .registers 6

    .line 588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 590
    .local v0, "token":J
    :try_start_4
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 591
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_14
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 598
    :cond_e
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    goto :goto_24

    .line 598
    :catchall_12
    move-exception v2

    goto :goto_25

    .line 592
    :catch_14
    move-exception v2

    .line 593
    .local v2, "ignore":Ljava/lang/Exception;
    :try_start_15
    const-string v3, "LSOService"

    const-string v4, "deleteWallpaperFiles() : failed but ignore this error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-boolean v3, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 595
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_12

    goto :goto_e

    .line 600
    .end local v2    # "ignore":Ljava/lang/Exception;
    :goto_24
    return-void

    .line 598
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    throw v2
.end method

.method private enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 525
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 525
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 516
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 516
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 505
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 508
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .registers 1

    .line 119
    const-string/jumbo v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotification(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 566
    const-string v0, "LSOService"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    .line 567
    .local v2, "isWallpaperConfigured":Z
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    .line 568
    .local v4, "isInvisibleOverlayConfigured":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 570
    .local v5, "token":J
    :try_start_11
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_WALLPAPER_ENABLED_INTERNAL"

    if-eqz v4, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 573
    const-string/jumbo v1, "sendConfigChangeNotification() - done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_32
    .catchall {:try_start_11 .. :try_end_2e} :catchall_30

    .line 577
    nop

    .end local v7    # "intent":Landroid/content/Intent;
    goto :goto_3a

    :catchall_30
    move-exception v0

    goto :goto_4d

    .line 574
    :catch_32
    move-exception v1

    .line 575
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_33
    const-string/jumbo v3, "sendConfigChangeNotification() : failed to send intent."

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_30

    .line 577
    nop

    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_3a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    nop

    .line 580
    :try_start_3e
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    .line 581
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_45

    .line 584
    goto :goto_4c

    .line 582
    :catch_45
    move-exception v1

    .line 583
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "sendConfigChangeNotification() : failed to update system ui."

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4c
    return-void

    .line 577
    :goto_4d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    throw v0
.end method

.method private setLockscreenInvisibleOverlaySystemUI(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 805
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    .line 806
    .local v2, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenInvisibleOverlayAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 810
    .end local v2    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    goto :goto_1f

    .line 810
    :catchall_12
    move-exception v2

    goto :goto_20

    .line 807
    :catch_14
    move-exception v2

    .line 808
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_15
    const-string v3, "LSOService"

    const-string/jumbo v4, "setLockscreenInvisibleOverlaySystemUI() failed. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 810
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_e

    .line 812
    :goto_1f
    return-void

    .line 810
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    throw v2
.end method

.method private setLockscreenWallpaperSystemUI(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .line 815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 817
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    .line 818
    .local v2, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenWallpaperAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 822
    .end local v2    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    goto :goto_1f

    .line 822
    :catchall_12
    move-exception v2

    goto :goto_20

    .line 819
    :catch_14
    move-exception v2

    .line 820
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_15
    const-string v3, "LSOService"

    const-string/jumbo v4, "setLockscreenWallpaperSystemUI() failed. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 822
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_e

    .line 824
    :goto_1f
    return-void

    .line 822
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw v2
.end method

.method private updateSystemUIMonitor(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 798
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    .line 799
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V

    .line 800
    return-void
.end method


# virtual methods
.method public canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "feature"    # I

    .line 339
    const-string v0, "LSOService"

    const/4 v1, 0x0

    .line 340
    .local v1, "allowedCnt":I
    const/4 v2, 0x0

    .line 342
    .local v2, "result":Z
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    move-object p1, v6

    .line 343
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 344
    .local v6, "uid":I
    if-eq v5, p2, :cond_14

    if-eqz p2, :cond_14

    if-ne v4, p2, :cond_1e

    .line 345
    :cond_14
    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v7, v5, :cond_1c

    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v7, v6, :cond_1e

    .line 346
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 349
    :cond_1e
    if-eq v5, p2, :cond_24

    if-eqz p2, :cond_24

    if-ne v3, p2, :cond_2e

    .line 350
    :cond_24
    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v7, v5, :cond_2c

    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2f

    if-ne v7, v6, :cond_2e

    .line 351
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    .line 355
    .end local v6    # "uid":I
    :cond_2e
    goto :goto_44

    .line 353
    :catch_2f
    move-exception v6

    .line 354
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canConfigure() Unhandled exception."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_44
    const/4 v6, 0x0

    if-ne v5, p2, :cond_4d

    .line 357
    if-lt v1, v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v4, v6

    :goto_4b
    move v2, v4

    goto :goto_52

    .line 359
    :cond_4d
    if-lez v1, :cond_50

    goto :goto_51

    :cond_50
    move v4, v6

    :goto_51
    move v2, v4

    .line 361
    :goto_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canConfigure("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v2
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "breadth"    # I

    monitor-enter p0

    .line 744
    :try_start_1
    const-string v0, "%s_%s%s_%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 745
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 744
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "destFile":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object v1

    .line 743
    .end local v0    # "destFile":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "depth":I
    .end local p4    # "breadth":I
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z
    .registers 11
    .param p1, "adminUid"    # I
    .param p2, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p3, "layer"    # I

    monitor-enter p0

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "retVal":Z
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/enterprise/lso/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "layerDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_9a

    .line 625
    .local v2, "token":J
    :try_start_17
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 627
    const-string v4, "/data/system/enterprise"

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_60
    .catchall {:try_start_17 .. :try_end_20} :catchall_5e

    const/4 v5, 0x0

    if-nez v4, :cond_29

    .line 628
    nop

    .line 644
    :try_start_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_9a

    .line 628
    monitor-exit p0

    return v5

    .line 631
    .end local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    :cond_29
    :try_start_29
    const-string v4, "/data/system/enterprise/lso"

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_60
    .catchall {:try_start_29 .. :try_end_2f} :catchall_5e

    if-nez v4, :cond_37

    .line 632
    nop

    .line 644
    :try_start_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_9a

    .line 632
    monitor-exit p0

    return v5

    .line 635
    :cond_37
    :try_start_37
    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3b} :catch_60
    .catchall {:try_start_37 .. :try_end_3b} :catchall_5e

    if-nez v4, :cond_43

    .line 636
    nop

    .line 644
    :try_start_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_9a

    .line 636
    monitor-exit p0

    return v5

    .line 639
    :cond_43
    :try_start_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z

    move-result v4
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5b} :catch_60
    .catchall {:try_start_43 .. :try_end_5b} :catchall_5e

    move v0, v4

    .line 640
    const/4 v0, 0x1

    goto :goto_68

    .line 644
    :catchall_5e
    move-exception v4

    goto :goto_96

    .line 641
    :catch_60
    move-exception v4

    .line 642
    .local v4, "e":Ljava/lang/Exception;
    :try_start_61
    const-string v5, "LSOService"

    const-string v6, "copyFiles1() error occurs. "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5e

    .line 644
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_68
    :try_start_68
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    nop

    .line 647
    if-nez v0, :cond_71

    .line 649
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 651
    :cond_71
    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles1() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_68 .. :try_end_94} :catchall_9a

    .line 652
    monitor-exit p0

    return v0

    .line 644
    :goto_96
    :try_start_96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    throw v4
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_9a

    .line 619
    .end local v0    # "retVal":Z
    .end local v1    # "layerDir":Ljava/lang/String;
    .end local v2    # "token":J
    .end local p1    # "adminUid":I
    .end local p2    # "lsoData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .end local p3    # "layer":I
    :catchall_9a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    monitor-enter p0

    .line 657
    if-nez p1, :cond_6

    .line 658
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 661
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_fb

    .line 663
    .local v1, "breadth":Ljava/lang/Integer;
    const/4 v2, 0x1

    .line 665
    .local v2, "retVal":Z
    :try_start_c
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    .line 666
    .local v3, "type":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_62

    const/4 v4, 0x4

    if-eq v3, v4, :cond_18

    goto/16 :goto_94

    .line 668
    :cond_18
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 669
    .local v4, "itemContainer":Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 670
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 671
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v6

    .line 670
    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 672
    .local v5, "tempFilePath":Ljava/lang/String;
    if-nez v5, :cond_38

    .line 673
    const-string v6, "LSOService"

    const-string v7, "copyFiles2 - LSO_ITEM_TYPE_CONTAINER : file no created"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_36} :catch_d2
    .catchall {:try_start_c .. :try_end_36} :catchall_fb

    .line 674
    monitor-exit p0

    return v0

    .line 677
    .end local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v5, p2, p3, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, "imagePath":Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 680
    if-nez v6, :cond_47

    .line 681
    const/4 v2, 0x0

    .line 682
    goto :goto_94

    .line 684
    :cond_47
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 687
    .end local v5    # "tempFilePath":Ljava/lang/String;
    .end local v6    # "imagePath":Ljava/lang/String;
    :cond_4a
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v6

    if-ge v5, v6, :cond_61

    if-eqz v2, :cond_61

    .line 688
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v6

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {p0, v6, p2, v7}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z

    move-result v6

    move v2, v6

    .line 687
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 690
    .end local v5    # "i":I
    :cond_61
    goto :goto_94

    .line 694
    .end local v4    # "itemContainer":Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
    :cond_62
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 695
    .local v4, "itemImage":Lcom/samsung/android/knox/lockscreen/LSOItemImage;
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_94

    .line 696
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 697
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 696
    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "tempFilePath":Ljava/lang/String;
    if-nez v5, :cond_82

    .line 699
    const-string v6, "LSOService"

    const-string v7, "copyFiles2 - LSO_ITEM_TYPE_IMAGE : file no created"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_80} :catch_d2
    .catchall {:try_start_38 .. :try_end_80} :catchall_fb

    .line 700
    monitor-exit p0

    return v0

    .line 703
    :cond_82
    :try_start_82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v5, p2, p3, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 705
    .restart local v6    # "imagePath":Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 706
    if-nez v6, :cond_91

    .line 707
    const/4 v2, 0x0

    .line 708
    goto :goto_94

    .line 710
    :cond_91
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    .line 715
    .end local v4    # "itemImage":Lcom/samsung/android/knox/lockscreen/LSOItemImage;
    .end local v5    # "tempFilePath":Ljava/lang/String;
    .end local v6    # "imagePath":Ljava/lang/String;
    :cond_94
    :goto_94
    if-eqz v2, :cond_d1

    .line 716
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    .line 717
    .local v4, "attrSet":Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    if-eqz v4, :cond_d1

    const-string v5, "android:src"

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 718
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    const-string v6, "android:src"

    .line 719
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 718
    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 720
    .restart local v5    # "tempFilePath":Ljava/lang/String;
    if-nez v5, :cond_bd

    .line 721
    const-string v6, "LSOService"

    const-string v7, "copyFiles2 - attrSet ATTR_IMAGE_SRC : file no created"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_bb} :catch_d2
    .catchall {:try_start_82 .. :try_end_bb} :catchall_fb

    .line 722
    monitor-exit p0

    return v0

    .line 725
    :cond_bd
    :try_start_bd
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v5, p2, p3, v0}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "imagePath":Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 728
    if-nez v0, :cond_cc

    .line 729
    const/4 v2, 0x0

    goto :goto_d1

    .line 731
    :cond_cc
    const-string v6, "android:src"

    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d1} :catch_d2
    .catchall {:try_start_bd .. :try_end_d1} :catchall_fb

    .line 738
    .end local v0    # "imagePath":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "attrSet":Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .end local v5    # "tempFilePath":Ljava/lang/String;
    :cond_d1
    :goto_d1
    goto :goto_db

    .line 735
    :catch_d2
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d3
    const-string v3, "LSOService"

    const-string v4, "copyFiles2() - failed. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    const/4 v2, 0x0

    .line 739
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_db
    const-string v0, "LSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFiles2() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ret ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_d3 .. :try_end_f9} :catchall_fb

    .line 740
    monitor-exit p0

    return v2

    .line 656
    .end local v1    # "breadth":Ljava/lang/Integer;
    .end local v2    # "retVal":Z
    .end local p1    # "lsoData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .end local p2    # "filePrefix":Ljava/lang/String;
    .end local p3    # "depth":I
    :catchall_fb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 829
    const-string v0, "Permission Denial: can\'t dump LSOService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    return-void

    .line 832
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    .line 835
    .local v1, "isConfigured":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOCKSCREEN_WALLPAPER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const-string v3, "  AdminUid: "

    if-eqz v1, :cond_55

    .line 838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_55
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    .line 842
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCKSCREEN_OVERLAY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    if-eqz v1, :cond_ca

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const/4 v3, 0x1

    .local v3, "layer":I
    :goto_8c
    const/4 v4, 0x3

    if-gt v3, v4, :cond_c3

    .line 847
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/lso/LSOService;->getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v4

    .line 848
    .local v4, "item":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    if-eqz v4, :cond_c0

    .line 849
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Layer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .end local v4    # "item":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    :cond_c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 853
    .end local v3    # "layer":I
    :cond_c3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public declared-synchronized getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "layer"    # I

    monitor-enter p0

    .line 212
    :try_start_1
    const-string v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x1

    if-lt p2, v0, :cond_47

    const/4 v0, 0x3

    if-gt p2, v0, :cond_47

    .line 218
    sget-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v0, :cond_41

    .line 219
    const-string v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getData() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    :cond_41
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v0, v0, p2
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_4f

    monitor-exit p0

    return-object v0

    .line 214
    :cond_47
    :try_start_47
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4f

    .line 211
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "layer":I
    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 496
    sget-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPreferences() - lsoPref = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "feature"    # I

    .line 316
    const/4 v0, 0x0

    .line 319
    .local v0, "resultCnt":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v2, p2, :cond_9

    if-eqz p2, :cond_9

    if-ne v1, p2, :cond_f

    .line 320
    :cond_9
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v3, v2, :cond_f

    .line 321
    add-int/lit8 v0, v0, 0x1

    .line 324
    :cond_f
    const/4 v3, 0x2

    if-eq v2, p2, :cond_16

    if-eqz p2, :cond_16

    if-ne v3, p2, :cond_1c

    .line 325
    :cond_16
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v4, v2, :cond_1c

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 329
    :cond_1c
    const/4 v4, 0x0

    if-ne v2, p2, :cond_24

    .line 330
    if-lt v0, v3, :cond_22

    goto :goto_23

    :cond_22
    move v1, v4

    .local v1, "result":Z
    :goto_23
    goto :goto_28

    .line 332
    .end local v1    # "result":Z
    :cond_24
    if-lez v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v4

    .line 334
    .restart local v1    # "result":Z
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isConfigured("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LSOService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 796
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 535
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 558
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 560
    .local v0, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 561
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    .line 563
    :cond_13
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 539
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1e

    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 541
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 542
    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 544
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_14
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1e

    .line 545
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v0, v3, v2

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 549
    .end local v2    # "i":I
    :cond_1e
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v0, :cond_2c

    .line 550
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 551
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 552
    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 555
    :cond_2c
    return-void
.end method

.method public resetData(Lcom/samsung/android/knox/ContextInfo;I)V
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "layer"    # I

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetData() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 230
    .local v9, "userId":I
    if-ltz p2, :cond_c9

    const/4 v2, 0x3

    if-gt p2, v2, :cond_c9

    .line 235
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 236
    const-string/jumbo v2, "resetData() : Not allowed to reset Overlay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 240
    :cond_37
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v3, v4, :cond_a2

    .line 241
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 242
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 243
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 245
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_53

    .line 246
    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 249
    :cond_53
    if-nez p2, :cond_60

    .line 250
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_56
    if-gt v1, v2, :cond_5f

    .line 251
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v4, v3, v1

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .end local v1    # "i":I
    :cond_5f
    goto :goto_64

    .line 254
    :cond_60
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v4, v1, p2

    .line 257
    :goto_64
    const/4 v0, 0x1

    .line 259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 261
    .local v10, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 262
    :try_start_6c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has reset banner settings."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 261
    move v8, v9

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8e} :catch_91
    .catchall {:try_start_6c .. :try_end_8e} :catchall_8f

    goto :goto_99

    .line 269
    :catchall_8f
    move-exception v1

    goto :goto_9e

    .line 264
    :catch_91
    move-exception v1

    .line 265
    .local v1, "ignore":Ljava/lang/Exception;
    :try_start_92
    sget-boolean v2, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v2, :cond_99

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_8f

    .line 269
    .end local v1    # "ignore":Ljava/lang/Exception;
    :cond_99
    :goto_99
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    nop

    .line 272
    .end local v10    # "psToken":J
    goto :goto_c3

    .line 269
    .restart local v10    # "psToken":J
    :goto_9e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw v1

    .line 273
    .end local v10    # "psToken":J
    :cond_a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetData() : requested uid is diffren with present admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_c3
    if-eqz v0, :cond_c8

    .line 277
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 279
    :cond_c8
    return-void

    .line 231
    :cond_c9
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid layer. Layer must be 0...3 but requseted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetWallpaper(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 282
    const-string v0, "LSOService"

    const-string/jumbo v1, "resetWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 287
    .local v9, "userId":I
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 288
    const-string v2, "Not allowed to reset Wallpaper"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 292
    :cond_1e
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v0, v2, :cond_62

    .line 293
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 296
    const/4 v1, 0x1

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 300
    .local v10, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 301
    :try_start_37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LSOService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has reset banner wallpaper."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 300
    move v8, v9

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_5d

    .line 304
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    goto :goto_62

    .line 304
    :catchall_5d
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw v0

    .line 309
    .end local v10    # "token":J
    :cond_62
    :goto_62
    if-eqz v1, :cond_67

    .line 310
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 312
    :cond_67
    return-void
.end method

.method public declared-synchronized setData(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "lsoData"    # Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .param p3, "layer"    # I

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    monitor-enter p0

    .line 149
    :try_start_7
    const-string v0, "LSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setData() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object v10, v0

    .line 152
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v10, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v15, v0

    .line 153
    .local v15, "userId":I
    iget v0, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_105

    move v14, v0

    .line 156
    .local v14, "uid":I
    const/4 v0, 0x1

    if-lt v9, v0, :cond_f6

    const/4 v2, 0x3

    if-gt v9, v2, :cond_f6

    .line 161
    :try_start_35
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_f2

    const/4 v11, -0x1

    if-nez v0, :cond_4e

    .line 162
    :try_start_3c
    const-string v0, "LSOService"

    const-string v2, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_49

    .line 163
    nop

    .line 193
    :try_start_44
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_105

    .line 163
    monitor-exit p0

    return v11

    .line 193
    .end local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    :catchall_49
    move-exception v0

    move v5, v14

    move v6, v15

    goto/16 :goto_101

    .line 166
    :cond_4e
    :try_start_4e
    iget-object v0, v1, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    .line 167
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_f2

    .line 169
    .local v0, "telMgr":Landroid/telephony/TelephonyManager;
    if-ne v9, v2, :cond_71

    if-eqz v0, :cond_63

    :try_start_5d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_71

    .line 170
    :cond_63
    const-string v2, "LSOService"

    const-string/jumbo v3, "setData() failed because telephony is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_49

    .line 171
    const/4 v2, -0x3

    .line 193
    :try_start_6c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_105

    .line 171
    monitor-exit p0

    return v2

    .line 174
    :cond_71
    :try_start_71
    invoke-virtual {v1, v14, v8, v9}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z

    move-result v2
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_f2

    const/4 v12, -0x4

    if-nez v2, :cond_7e

    .line 175
    nop

    .line 193
    :try_start_79
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_105

    .line 175
    monitor-exit p0

    return v12

    .line 178
    :cond_7e
    :try_start_7e
    iget-object v2, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v3, v14

    iget-object v7, v1, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v2
    :try_end_8b
    .catchall {:try_start_7e .. :try_end_8b} :catchall_f2

    .line 179
    .local v2, "result":Z
    if-nez v2, :cond_a7

    .line 180
    :try_start_8d
    iget-object v3, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v3

    iput v3, v1, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 181
    iget-object v4, v1, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v5, 0x0

    aput-object v5, v4, v9

    .line 182
    if-ne v3, v11, :cond_9e

    .line 183
    iput-object v5, v1, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 185
    :cond_9e
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V
    :try_end_a1
    .catchall {:try_start_8d .. :try_end_a1} :catchall_49

    .line 186
    nop

    .line 193
    :try_start_a2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_105

    .line 186
    monitor-exit p0

    return v12

    .line 189
    :cond_a7
    :try_start_a7
    iput v14, v1, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 190
    iget-object v3, v1, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v8, v3, v9
    :try_end_ad
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_f2

    .line 193
    .end local v0    # "telMgr":Landroid/telephony/TelephonyManager;
    .end local v2    # "result":Z
    :try_start_ad
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 194
    nop

    .line 195
    invoke-direct {v1, v15}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_b8
    .catchall {:try_start_ad .. :try_end_b8} :catchall_105

    .line 200
    .local v2, "token":J
    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 201
    :try_start_bb
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has changed banner settings."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_d9
    .catchall {:try_start_bb .. :try_end_d9} :catchall_eb

    .line 200
    move v5, v14

    .end local v14    # "uid":I
    .local v5, "uid":I
    move v14, v0

    move v6, v15

    .end local v15    # "userId":I
    .local v6, "userId":I
    move-object v15, v4

    move/from16 v17, v6

    :try_start_df
    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e9

    .line 204
    :try_start_e2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_105

    .line 205
    nop

    .line 208
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 204
    :catchall_e9
    move-exception v0

    goto :goto_ee

    .end local v5    # "uid":I
    .end local v6    # "userId":I
    .restart local v14    # "uid":I
    .restart local v15    # "userId":I
    :catchall_eb
    move-exception v0

    move v5, v14

    move v6, v15

    .end local v14    # "uid":I
    .end local v15    # "userId":I
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    :goto_ee
    :try_start_ee
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v0
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_105

    .line 193
    .end local v2    # "token":J
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    .restart local v14    # "uid":I
    .restart local v15    # "userId":I
    :catchall_f2
    move-exception v0

    move v5, v14

    move v6, v15

    .end local v14    # "uid":I
    .end local v15    # "userId":I
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    goto :goto_101

    .line 156
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    .restart local v14    # "uid":I
    .restart local v15    # "userId":I
    :cond_f6
    move v5, v14

    move v6, v15

    .line 157
    .end local v14    # "uid":I
    .end local v15    # "userId":I
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    :try_start_f8
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v5    # "uid":I
    .end local v6    # "userId":I
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "lsoData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .end local p3    # "layer":I
    throw v0
    :try_end_100
    .catchall {:try_start_f8 .. :try_end_100} :catchall_100

    .line 193
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    .restart local p2    # "lsoData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .restart local p3    # "layer":I
    :catchall_100
    move-exception v0

    :goto_101
    :try_start_101
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 194
    throw v0
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_105

    .line 148
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p0    # "this":Lcom/android/server/enterprise/lso/LSOService;
    .end local p2    # "lsoData":Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .end local p3    # "layer":I
    :catchall_105
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreferences(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pref"    # Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 456
    const/4 v0, 0x1

    .line 458
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 460
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v2, -0x6

    const/4 v3, -0x1

    const-string v4, "LSOService"

    if-ne v1, v3, :cond_14

    .line 461
    const-string/jumbo v1, "setPreferences() : There is no configured data from admin. "

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v2

    .line 465
    :cond_14
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v1, v5, :cond_1f

    .line 466
    const-string/jumbo v1, "setPreferences() : Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v3

    .line 470
    :cond_1f
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    if-nez v3, :cond_32

    const/4 v3, 0x2

    aget-object v1, v1, v3

    if-nez v1, :cond_32

    .line 471
    const-string/jumbo v1, "setPreferences() : layer doesn\'t configure so cannot set pref."

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return v2

    .line 476
    :cond_32
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v0

    .line 478
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 479
    if-eqz v0, :cond_7a

    .line 480
    iput-object p2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 483
    .local v1, "psToken":J
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 484
    :try_start_4a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "LSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has changed banner settings."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 486
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 483
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_75

    .line 488
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    goto :goto_7a

    .line 488
    :catchall_75
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    throw v3

    .line 492
    .end local v1    # "psToken":J
    :cond_7a
    :goto_7a
    if-eqz v0, :cond_7e

    const/4 v1, 0x0

    goto :goto_7f

    :cond_7e
    const/4 v1, -0x4

    :goto_7f
    return v1
.end method

.method public setWallpaper(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "imageFilePath"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/os/ParcelFileDescriptor;

    .line 366
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWallpaper("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LSOService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    .line 368
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v4, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 369
    .local v13, "userId":I
    iget v14, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 370
    .local v14, "uid":I
    const/4 v6, 0x2

    invoke-virtual {v1, v4, v6}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_3d

    .line 371
    const-string/jumbo v0, "setWallpaper() : Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v7

    .line 374
    :cond_3d
    const/4 v6, -0x4

    if-eqz v2, :cond_11e

    if-nez v3, :cond_44

    goto/16 :goto_11e

    .line 378
    :cond_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 379
    .local v8, "token":J
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 380
    .local v15, "tempFilePath":Ljava/lang/String;
    if-nez v15, :cond_54

    .line 381
    const-string v0, "file not created"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v6

    .line 384
    :cond_54
    const/4 v10, 0x0

    .line 386
    .local v10, "bCopied":Z
    :try_start_55
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_6c

    .line 387
    const-string v0, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_67} :catch_a8
    .catchall {:try_start_55 .. :try_end_67} :catchall_a6

    .line 388
    const/4 v0, -0x3

    .line 416
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    return v0

    .line 391
    :cond_6c
    :try_start_6c
    const-string v11, "/data/system/enterprise"

    invoke-static {v11}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v11
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_a8
    .catchall {:try_start_6c .. :try_end_72} :catchall_a6

    if-nez v11, :cond_79

    .line 392
    nop

    .line 416
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    return v6

    .line 395
    :cond_79
    :try_start_79
    const-string v11, "/data/system/enterprise/lso"

    invoke-static {v11}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v11
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_a8
    .catchall {:try_start_79 .. :try_end_7f} :catchall_a6

    if-nez v11, :cond_86

    .line 396
    nop

    .line 416
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    return v6

    .line 399
    :cond_86
    :try_start_86
    iget-object v11, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v11}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 403
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v12, v1, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-static {v15, v11, v0, v12}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    move v10, v11

    .line 405
    if-eqz v10, :cond_b0

    .line 406
    const-string/jumbo v11, "setWallpaper() : Create Ripple image"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v12, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v0, v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v0
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a4} :catch_a8
    .catchall {:try_start_86 .. :try_end_a4} :catchall_a6

    move v10, v0

    goto :goto_b0

    .line 416
    :catchall_a6
    move-exception v0

    goto :goto_11a

    .line 412
    :catch_a8
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a9
    const-string/jumbo v11, "setWallpaper() : error occurs"

    invoke-static {v5, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a9 .. :try_end_af} :catchall_a6

    .line 414
    const/4 v10, 0x0

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b0
    :goto_b0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    move/from16 v16, v10

    .line 419
    .end local v10    # "bCopied":Z
    .local v16, "bCopied":Z
    if-nez v16, :cond_c1

    .line 420
    const-string/jumbo v0, "setWallpaper() : Error in copying file"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {v15}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 422
    return v6

    .line 425
    :cond_c1
    iget-object v0, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v10, v14

    invoke-virtual {v0, v10, v11, v15}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v17

    .line 426
    .local v17, "result":Z
    if-nez v17, :cond_d9

    .line 427
    const-string/jumbo v0, "setWallpaper() : Failed to set wallpaper data. "

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput v7, v1, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 429
    invoke-static {v15}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 431
    return v6

    .line 434
    :cond_d9
    iput v14, v1, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 436
    invoke-direct {v1, v13}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 441
    .end local v8    # "token":J
    .local v18, "token":J
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 442
    :try_start_e5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "LSOService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has changed banner wallpaper to file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 441
    move v12, v13

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_10a} :catch_110
    .catchall {:try_start_e5 .. :try_end_10a} :catchall_10b

    goto :goto_111

    .line 447
    :catchall_10b
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    throw v0

    .line 445
    :catch_110
    move-exception v0

    .line 447
    :goto_111
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    nop

    .line 451
    invoke-static {v15}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    return v0

    .line 416
    .end local v16    # "bCopied":Z
    .end local v17    # "result":Z
    .end local v18    # "token":J
    .restart local v8    # "token":J
    .restart local v10    # "bCopied":Z
    :goto_11a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    throw v0

    .line 375
    .end local v8    # "token":J
    .end local v10    # "bCopied":Z
    .end local v15    # "tempFilePath":Ljava/lang/String;
    :cond_11e
    :goto_11e
    const-string/jumbo v0, "setWallpaper() : imageFilePath or image is null, please check path"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v6
.end method

.method public systemReady()V
    .registers 1

    .line 531
    return-void
.end method
