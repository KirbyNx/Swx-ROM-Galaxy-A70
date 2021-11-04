.class public Lcom/android/server/am/mars/MARsDebugConfig;
.super Ljava/lang/Object;
.source "MARsDebugConfig.java"


# static fields
.field static final DEBUG_ALL:Z

.field public static DEBUG_DATABASE:Z = false

.field public static DEBUG_ENG:Z = false

.field public static DEBUG_FILTER:Z = false

.field public static DEBUG_FREECESS:Z = false

.field public static DEBUG_MARs:Z = false

.field public static DEBUG_OLAF:Z = false

.field public static final TAG_MARS:Ljava/lang/String; = "MARs"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 10
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    .line 11
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v3, "0x4f4c"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 12
    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v3, "true"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_34

    :cond_32
    move v0, v1

    goto :goto_35

    :cond_34
    :goto_34
    move v0, v2

    :goto_35
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 15
    sput-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ALL:Z

    .line 19
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 21
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 23
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 25
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 27
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
