.class public Lcom/android/server/bridge/operations/SimplePersonaInfos;
.super Ljava/lang/Object;
.source "SimplePersonaInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    }
.end annotation


# static fields
.field public static final LAST_IMPORT_CALENDAR_STATUS:Ljava/lang/String; = "last_import_calendar_status"

.field public static final LAST_IMPORT_CONTACT_STATUS:Ljava/lang/String; = "last_import_contact_status"

.field static final MAX:I = 0x5

.field public static final PERSONA_ID:Ljava/lang/String; = "user_id"

.field public static final PERSONA_NAME:Ljava/lang/String; = "user_name"

.field public static final PERSONA_TYPE:Ljava/lang/String; = "type"

.field static final TAG:Ljava/lang/String; = "SimplePersonaInfos"

.field private static mCtx:Landroid/content/Context;


# instance fields
.field isInitialized:Z

.field lock:Ljava/lang/Object;

.field mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    .line 37
    sput-object p1, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    .line 39
    return-void
.end method

.method private addItem(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isExist(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    return-void

    .line 78
    :cond_7
    new-instance v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;-><init>(Lcom/android/server/bridge/operations/SimplePersonaInfos;)V

    .line 79
    .local v0, "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v1, "bundle":Landroid/os/Bundle;
    iput p1, v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    .line 82
    iput-object p2, v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->name:Ljava/lang/String;

    .line 83
    iput-object p3, v0, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    .line 85
    const-string v2, "KNOX"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 86
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2a

    .line 88
    :cond_25
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 91
    :goto_2a
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string/jumbo v2, "user_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "last_import_contact_status"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v2, "last_import_calendar_status"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v0    # "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    return-void
.end method

.method private isExist(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 103
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v1, v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne v1, p1, :cond_17

    .line 104
    const/4 v1, 0x1

    return v1

    .line 102
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getExtraInfo(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "userid"    # I

    .line 130
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    .registers 4
    .param p1, "i"    # I

    .line 134
    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_a
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1e

    if-ltz p1, :cond_1e

    .line 140
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    monitor-exit v0

    return-object v1

    .line 142
    :cond_1e
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getSimplePersonaInfo(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "personaId"    # I

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 3

    .line 147
    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_7

    .line 148
    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_a
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 153
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1
.end method

.method public initialize()V
    .registers 10

    .line 42
    sget-object v0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mCtx:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 43
    return-void

    .line 45
    :cond_5
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 46
    .local v0, "um":Landroid/os/UserManager;
    if-nez v0, :cond_11

    .line 47
    return-void

    .line 50
    :cond_11
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_21

    .line 52
    const-string v1, "SimplePersonaInfos"

    const-string/jumbo v3, "initialize() failed, personas is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 55
    :cond_21
    iget-object v3, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 56
    iget-object v3, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 57
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    :try_start_2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 58
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 60
    .local v5, "ui":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_41

    .line 61
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v8, "default"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->addItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 67
    .end local v4    # "i":I
    :cond_44
    iput-boolean v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    .line 68
    monitor-exit v3

    .line 69
    return-void

    .line 68
    :catchall_48
    move-exception v1

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public removeItem(I)V
    .registers 5
    .param p1, "id"    # I

    .line 112
    iget-boolean v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->isInitialized:Z

    if-nez v0, :cond_8

    .line 113
    invoke-virtual {p0}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->initialize()V

    .line 114
    return-void

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 119
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    iget v2, v2, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    if-ne p1, v2, :cond_26

    .line 120
    iget-object v2, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 121
    goto :goto_29

    .line 118
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 125
    .end local v1    # "i":I
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/bridge/operations/SimplePersonaInfos;->mExtraInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw v1
.end method
