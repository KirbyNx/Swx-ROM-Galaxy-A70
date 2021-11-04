.class public Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
.super Ljava/lang/Object;
.source "OngoingNotiPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

.field private mContext:Landroid/content/Context;

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSpecialNotificationAppListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;

    .line 18
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;-><init>()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
    .registers 1

    .line 32
    # getter for: Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    return-object v0
.end method

.method private isNotificationListenerPresent(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 85
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .local v0, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 89
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 49
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->isNotificationListenerPresent(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, ")"

    const-string v3, "("

    if-eqz v0, :cond_2b

    .line 53
    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter(NotiListener) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v1

    .line 57
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

    const/4 v4, 0x0

    if-eqz v0, :cond_73

    .line 58
    array-length v5, v0

    move v6, v4

    :goto_32
    if-ge v6, v5, :cond_73

    aget-object v7, v0, v6

    .line 59
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    if-ne v8, p3, :cond_70

    .line 60
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x22

    if-eqz v8, :cond_70

    .line 61
    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1

    .line 58
    .end local v7    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 67
    :cond_73
    return v4
.end method

.method public getActiveNotifications()V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_11

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 75
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_34

    .line 77
    :try_start_15
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_1c

    .line 80
    goto :goto_34

    .line 78
    :catch_1c
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getActiveNotifications() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34
    :goto_34
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->setContext(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    return-void
.end method

.method public onNotificationListenerBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/Integer;

    .line 93
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 94
    .local v0, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_10

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 97
    :cond_10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public onNotificationListenerUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/Integer;

    .line 102
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 103
    .local v0, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_d

    .line 104
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
