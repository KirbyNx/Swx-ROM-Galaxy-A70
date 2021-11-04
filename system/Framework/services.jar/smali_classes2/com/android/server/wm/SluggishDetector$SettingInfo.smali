.class final Lcom/android/server/wm/SluggishDetector$SettingInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingInfo"
.end annotation


# static fields
.field private static final PERFORMANCE_MODE_URI_STR:Ljava/lang/String; = "sem_perfomance_mode"

.field private static final POWER_SAVING_MODE_URI_STR:Ljava/lang/String; = "low_power"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SettingInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SettingInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5800(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 1212
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Landroid/content/ContentResolver;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/ContentResolver;

    .line 1212
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->getPowerSavingMode(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Landroid/content/ContentResolver;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/ContentResolver;

    .line 1212
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->getPerformanceMode(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 1212
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Landroid/content/Context;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 1212
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->getInstalledPackageCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p0, :cond_7

    .line 1234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1239
    :cond_7
    return-object v0
.end method

.method private static getInstalledPackageCount(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1312
    const/4 v0, -0x1

    .line 1314
    .local v0, "installedPackageCount":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1315
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1317
    .local v2, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v3

    .line 1320
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_12

    .line 1319
    :catch_11
    move-exception v1

    .line 1325
    :goto_12
    return v0
.end method

.method private static getPerformanceMode(Landroid/content/ContentResolver;)I
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 1268
    const/4 v0, -0x1

    .line 1269
    .local v0, "mode":I
    if-eqz p0, :cond_b

    .line 1270
    const/4 v1, 0x0

    const-string/jumbo v2, "sem_perfomance_mode"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1275
    :cond_b
    return v0
.end method

.method private static getPowerSavingMode(Landroid/content/ContentResolver;)I
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 1250
    const/4 v0, -0x1

    .line 1251
    .local v0, "mode":I
    if-eqz p0, :cond_b

    .line 1252
    const/4 v1, 0x0

    const-string/jumbo v2, "low_power"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1257
    :cond_b
    return v0
.end method

.method private static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1286
    const/4 v0, -0x1

    .line 1287
    .local v0, "widthPixels":I
    const/4 v1, -0x1

    .line 1289
    .local v1, "heightPixels":I
    :try_start_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1290
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1291
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1292
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move v0, v4

    .line 1293
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move v1, v4

    .line 1296
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "wm":Landroid/view/WindowManager;
    goto :goto_23

    .line 1295
    :catch_22
    move-exception v2

    .line 1301
    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
