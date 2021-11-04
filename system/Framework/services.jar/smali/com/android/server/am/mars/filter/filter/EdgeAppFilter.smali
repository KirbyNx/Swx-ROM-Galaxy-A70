.class public Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
.super Ljava/lang/Object;
.source "EdgeAppFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field cocktailBarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mRegisteredCocktailBarSettingsObserver:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;

    .line 22
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    .line 22
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V

    return-void
.end method

.method private getCocktailBarPackage()V
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 82
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 84
    .local v1, "strCocktailBar":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cocktail_bar_enabled_cocktails"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 87
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 90
    if-eqz v1, :cond_32

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 91
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "cocktailBarArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 93
    nop

    .end local v3    # "cocktailBarArray":[Ljava/lang/String;
    goto :goto_41

    :cond_32
    if-eqz v1, :cond_41

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 94
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_41
    :goto_41
    monitor-exit v2

    .line 97
    return-void

    .line 96
    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    throw v3
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
    .registers 1

    .line 37
    # getter for: Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    move-result-object v0

    return-object v0
.end method

.method private registerEnabledCocktailBarChanged()V
    .registers 6

    .line 100
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    if-nez v0, :cond_2b

    .line 101
    new-instance v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    .line 107
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cocktail_bar_enabled_cocktails"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 107
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    .line 111
    :cond_2b
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private unregisterEnabledCocktailBarChanged()V
    .registers 4

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    if-eqz v0, :cond_12

    .line 116
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    .line 121
    :cond_12
    goto :goto_1b

    .line 119
    :catch_13
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException occurred in unregisterEnabledCocktailBarChanged()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1b
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->unregisterEnabledCocktailBarChanged()V

    .line 58
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 62
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7d

    .line 63
    monitor-enter v0

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 65
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->cocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 66
    const/4 v2, 0x4

    const/16 v3, 0x12

    if-ne p4, v2, :cond_46

    .line 67
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") (FZ)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    monitor-exit v0

    return v3

    .line 69
    :cond_46
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 70
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-exit v0

    return v3

    .line 64
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 75
    .end local v1    # "i":I
    :cond_78
    monitor-exit v0

    goto :goto_7d

    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_6 .. :try_end_7c} :catchall_7a

    throw v1

    .line 77
    :cond_7d
    :goto_7d
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->setContext(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->registerEnabledCocktailBarChanged()V

    .line 52
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V

    .line 53
    return-void
.end method
