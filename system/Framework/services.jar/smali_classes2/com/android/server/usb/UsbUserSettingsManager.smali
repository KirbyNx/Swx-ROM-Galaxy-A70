.class Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "UsbUserSettingsManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    const-class v0, Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating settings for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_20
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_29} :catch_35

    .line 82
    nop

    .line 85
    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 90
    return-void

    .line 80
    :catch_35
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 192
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 193
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_b
    move-exception v0

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z
    .registers 11
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 157
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_78

    .line 158
    array-length v1, v0

    .line 159
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_78

    .line 160
    aget-object v3, v0, v2

    .line 162
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_c
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 164
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1c

    .line 179
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_5a

    .line 165
    :cond_1b
    goto :goto_75

    .line 168
    :cond_1c
    :try_start_1c
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 169
    :goto_1f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_48

    .line 170
    const-string/jumbo v5, "usb-accessory"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 171
    invoke-static {v4}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v5

    .line 172
    .local v5, "filter":Landroid/hardware/usb/AccessoryFilter;
    invoke-virtual {v5, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v7
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_4e

    if-eqz v7, :cond_44

    .line 173
    nop

    .line 179
    if-eqz v4, :cond_43

    :try_start_40
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_5a

    .line 173
    :cond_43
    return v6

    .line 177
    .end local v5    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_44
    :try_start_44
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4e

    goto :goto_1f

    .line 179
    :cond_48
    if-eqz v4, :cond_4d

    :try_start_4a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_5a

    .line 181
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4d
    goto :goto_75

    .line 162
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_4e
    move-exception v5

    if-eqz v4, :cond_59

    :try_start_51
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v6

    :try_start_56
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_59
    :goto_59
    throw v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_5a

    .line 179
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v1    # "numActivities":I
    .restart local v2    # "i":I
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_5a
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 185
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    :cond_78
    const/4 v1, 0x0

    return v1
.end method

.method canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 115
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_78

    .line 116
    array-length v1, v0

    .line 117
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_78

    .line 118
    aget-object v3, v0, v2

    .line 120
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_c
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 122
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1c

    .line 137
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_5a

    .line 123
    :cond_1b
    goto :goto_75

    .line 126
    :cond_1c
    :try_start_1c
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    :goto_1f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_48

    .line 128
    const-string/jumbo v5, "usb-device"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 129
    invoke-static {v4}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v5

    .line 130
    .local v5, "filter":Landroid/hardware/usb/DeviceFilter;
    invoke-virtual {v5, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v7
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_4e

    if-eqz v7, :cond_44

    .line 131
    nop

    .line 137
    if-eqz v4, :cond_43

    :try_start_40
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_5a

    .line 131
    :cond_43
    return v6

    .line 135
    .end local v5    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_44
    :try_start_44
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4e

    goto :goto_1f

    .line 137
    :cond_48
    if-eqz v4, :cond_4d

    :try_start_4a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_5a

    .line 139
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4d
    goto :goto_75

    .line 120
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_4e
    move-exception v5

    if-eqz v4, :cond_59

    :try_start_51
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v6

    :try_start_56
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_59
    :goto_59
    throw v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_5a

    .line 137
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v1    # "numActivities":I
    .restart local v2    # "i":I
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_5a
    move-exception v4

    .line 138
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 143
    .end local v1    # "numActivities":I
    .end local v2    # "i":I
    :cond_78
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 25
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 200
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 202
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 203
    :try_start_b
    const-string/jumbo v0, "user_id"

    const-wide v6, 0x10500000001L

    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 208
    .local v6, "numDeviceAttachedActivities":I
    const/4 v7, 0x0

    .local v7, "activityNum":I
    :goto_2c
    if-ge v7, v6, :cond_8d

    .line 209
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 211
    .local v12, "deviceAttachedActivity":Landroid/content/pm/ResolveInfo;
    const-string v13, "device_attached_activities"

    const-wide v14, 0x20b00000004L

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v13

    .line 214
    .local v13, "deviceAttachedActivityToken":J
    const-string v15, "activity"

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v9, 0x10b00000001L

    invoke-static {v2, v15, v9, v10, v8}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 218
    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v8, v12}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v8

    .line 220
    .local v8, "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    if-eqz v8, :cond_85

    .line 221
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 222
    .local v9, "numDeviceFilters":I
    const/4 v10, 0x0

    .local v10, "filterNum":I
    :goto_63
    if-ge v10, v9, :cond_80

    .line 223
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    const-string v15, "filters"

    move-object/from16 v16, v8

    move/from16 v17, v9

    const-wide v8, 0x20b00000002L

    .end local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v9    # "numDeviceFilters":I
    .local v16, "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .local v17, "numDeviceFilters":I
    invoke-virtual {v11, v2, v15, v8, v9}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 222
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    move/from16 v9, v17

    goto :goto_63

    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v17    # "numDeviceFilters":I
    .restart local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .restart local v9    # "numDeviceFilters":I
    :cond_80
    move-object/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v9    # "numDeviceFilters":I
    .restart local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .restart local v17    # "numDeviceFilters":I
    goto :goto_87

    .line 220
    .end local v10    # "filterNum":I
    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v17    # "numDeviceFilters":I
    .restart local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    :cond_85
    move-object/from16 v16, v8

    .line 228
    .end local v8    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .restart local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    :goto_87
    invoke-virtual {v2, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 208
    .end local v12    # "deviceAttachedActivity":Landroid/content/pm/ResolveInfo;
    .end local v13    # "deviceAttachedActivityToken":J
    .end local v16    # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 231
    .end local v7    # "activityNum":I
    :cond_8d
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, v7}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 233
    .local v7, "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 234
    .local v8, "numAccessoryAttachedActivities":I
    const/4 v9, 0x0

    .local v9, "activityNum":I
    :goto_9d
    if-ge v9, v8, :cond_11d

    .line 235
    nop

    .line 236
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 238
    .local v10, "accessoryAttachedActivity":Landroid/content/pm/ResolveInfo;
    const-string v11, "accessory_attached_activities"

    const-wide v12, 0x20b00000005L

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 241
    .local v11, "accessoryAttachedActivityToken":J
    const-string v13, "activity"

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v0    # "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v18, "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    move-object v15, v7

    const-wide v6, 0x10b00000001L

    .end local v6    # "numDeviceAttachedActivities":I
    .end local v7    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "numDeviceAttachedActivities":I
    .local v15, "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v2, v13, v6, v7, v14}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 245
    iget-object v13, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v13, v10}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v13

    .line 247
    .local v13, "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    if-eqz v13, :cond_109

    .line 248
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 249
    .local v14, "numAccessoryFilters":I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "filterNum":I
    :goto_dc
    if-ge v6, v14, :cond_fd

    .line 250
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/AccessoryFilter;

    move/from16 v16, v0

    .end local v0    # "numDeviceAttachedActivities":I
    .local v16, "numDeviceAttachedActivities":I
    const-string v0, "filters"

    move-object/from16 v17, v13

    move/from16 v19, v14

    const-wide v13, 0x20b00000002L

    .end local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v14    # "numAccessoryFilters":I
    .local v17, "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .local v19, "numAccessoryFilters":I
    invoke-virtual {v7, v2, v0, v13, v14}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 249
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    move-object/from16 v13, v17

    move/from16 v14, v19

    goto :goto_dc

    .end local v16    # "numDeviceAttachedActivities":I
    .end local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v19    # "numAccessoryFilters":I
    .restart local v0    # "numDeviceAttachedActivities":I
    .restart local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .restart local v14    # "numAccessoryFilters":I
    :cond_fd
    move/from16 v16, v0

    move-object/from16 v17, v13

    move/from16 v19, v14

    const-wide v13, 0x20b00000002L

    .end local v0    # "numDeviceAttachedActivities":I
    .end local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v14    # "numAccessoryFilters":I
    .restart local v16    # "numDeviceAttachedActivities":I
    .restart local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .restart local v19    # "numAccessoryFilters":I
    goto :goto_112

    .line 247
    .end local v6    # "filterNum":I
    .end local v16    # "numDeviceAttachedActivities":I
    .end local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v19    # "numAccessoryFilters":I
    .restart local v0    # "numDeviceAttachedActivities":I
    .restart local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    :cond_109
    move/from16 v16, v0

    move-object/from16 v17, v13

    const-wide v13, 0x20b00000002L

    .line 255
    .end local v0    # "numDeviceAttachedActivities":I
    .end local v13    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .restart local v16    # "numDeviceAttachedActivities":I
    .restart local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    :goto_112
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 234
    .end local v10    # "accessoryAttachedActivity":Landroid/content/pm/ResolveInfo;
    .end local v11    # "accessoryAttachedActivityToken":J
    .end local v17    # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    add-int/lit8 v9, v9, 0x1

    move-object v7, v15

    move/from16 v6, v16

    move-object/from16 v0, v18

    goto :goto_9d

    .end local v15    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "numDeviceAttachedActivities":I
    .end local v18    # "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v6, "numDeviceAttachedActivities":I
    .restart local v7    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_11d
    move-object/from16 v18, v0

    move/from16 v16, v6

    move-object v15, v7

    .line 257
    .end local v0    # "deviceAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "numDeviceAttachedActivities":I
    .end local v7    # "accessoryAttachedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "numAccessoryAttachedActivities":I
    .end local v9    # "activityNum":I
    monitor-exit v5
    :try_end_123
    .catchall {:try_start_b .. :try_end_123} :catchall_127

    .line 259
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 260
    return-void

    .line 257
    :catchall_127
    move-exception v0

    :try_start_128
    monitor-exit v5
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    throw v0
.end method

.method queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 101
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 100
    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
