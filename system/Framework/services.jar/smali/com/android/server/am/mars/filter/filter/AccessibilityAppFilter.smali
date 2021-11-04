.class public Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
.super Ljava/lang/Object;
.source "AccessibilityAppFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field mAccessibilityContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEnabledAccessibilityPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredAccessibilityContentObserver:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    .line 19
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    .line 19
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEnabledAccessibilityPackage()V
    .registers 13

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "strAccessibility":Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 80
    .local v2, "tmp":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 81
    :try_start_6
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 82
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_d2

    .line 83
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const/4 v3, 0x0

    if-eqz v0, :cond_7e

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 85
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "mAccessibilityServiceList":[Ljava/lang/String;
    array-length v5, v4

    move v6, v3

    :goto_2b
    if-ge v6, v5, :cond_7d

    aget-object v7, v4, v6

    .line 87
    .local v7, "accessibilityservice":Ljava/lang/String;
    if-eqz v7, :cond_7a

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 88
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7a

    .line 90
    aget-object v8, v2, v3

    .line 91
    .end local v1    # "pkgName":Ljava/lang/String;
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v9

    .line 92
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 93
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_74
    monitor-exit v9

    move-object v1, v8

    goto :goto_7a

    :catchall_77
    move-exception v1

    monitor-exit v9
    :try_end_79
    .catchall {:try_start_4c .. :try_end_79} :catchall_77

    throw v1

    .line 86
    .end local v7    # "accessibilityservice":Ljava/lang/String;
    .end local v8    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_7a
    :goto_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 100
    .end local v4    # "mAccessibilityServiceList":[Ljava/lang/String;
    :cond_7d
    goto :goto_d1

    :cond_7e
    if-eqz v0, :cond_7d

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 101
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 102
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d1

    .line 104
    aget-object v3, v2, v3

    .line 105
    .end local v1    # "pkgName":Ljava/lang/String;
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v4

    .line 106
    :try_start_a3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 107
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_cb
    monitor-exit v4

    move-object v1, v3

    goto :goto_d1

    :catchall_ce
    move-exception v1

    monitor-exit v4
    :try_end_d0
    .catchall {:try_start_a3 .. :try_end_d0} :catchall_ce

    throw v1

    .line 114
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_d1
    :goto_d1
    return-void

    .line 82
    :catchall_d2
    move-exception v4

    :try_start_d3
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v4
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
    .registers 1

    .line 34
    # getter for: Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    move-result-object v0

    return-object v0
.end method

.method private registerContentObserver()V
    .registers 6

    .line 117
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    if-nez v0, :cond_2b

    .line 118
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    .line 124
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 124
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    .line 128
    :cond_2b
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private unregisterContentObserver()V
    .registers 4

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    if-eqz v0, :cond_12

    .line 133
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    .line 138
    :cond_12
    goto :goto_1b

    .line 136
    :catch_13
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1b
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 56
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 57
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->unregisterContentObserver()V

    .line 58
    return-void

    .line 56
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 62
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne p2, v0, :cond_47

    .line 63
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 64
    if-eqz p1, :cond_42

    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 66
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v1, 0x14

    monitor-exit v0

    return v1

    .line 70
    :cond_42
    monitor-exit v0

    goto :goto_47

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_44

    throw v1

    .line 72
    :cond_47
    :goto_47
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->setContext(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->registerContentObserver()V

    .line 50
    return-void
.end method

.method public isEnabledAccessibilityApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 144
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 146
    :cond_e
    monitor-exit v0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 146
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
