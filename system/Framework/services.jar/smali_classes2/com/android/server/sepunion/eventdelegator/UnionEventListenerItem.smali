.class public Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
.super Ljava/lang/Object;
.source "UnionEventListenerItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mUnionEventComponentsWithConditions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 28
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 30
    .local v0, "pendingIntentConditions":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    move-result v1

    return v1
.end method

.method public add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pendingIntentConditions"    # Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 34
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_33

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PendingIntentWithConditions added f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getFlag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return v1

    .line 43
    .end local v2    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    :cond_33
    const/4 v2, 0x1

    .line 44
    .local v2, "addNew":Z
    invoke-virtual {p2}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 45
    .local v3, "addIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 46
    .local v5, "item":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 47
    .local v7, "listedIntent":Landroid/content/Intent;
    invoke-virtual {v7, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 48
    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v8

    if-ne v4, v8, :cond_84

    .line 50
    sget-object v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Same PendingIntent is in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v6

    .line 54
    :cond_84
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 55
    sget-object v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "removed before add"

    invoke-static {v4, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 57
    :cond_93
    const/4 v2, 0x0

    .line 60
    goto :goto_96

    .line 62
    .end local v5    # "item":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    .end local v7    # "listedIntent":Landroid/content/Intent;
    :cond_95
    goto :goto_40

    .line 64
    :cond_96
    :goto_96
    if-eqz v2, :cond_b6

    .line 65
    sget-object v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PendingIntentWithConditions replaced f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getFlag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return v1

    .line 70
    .end local v2    # "addNew":Z
    .end local v3    # "addIntent":Landroid/content/Intent;
    :cond_b6
    return v6
.end method

.method public clear(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 104
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    .local v0, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 74
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    .line 76
    .local v0, "pendingIntentConditions":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    move-result v1

    return v1
.end method

.method public remove(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pendingIntentConditions"    # Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 80
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 81
    sget-object v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pending intent is null"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v0

    .line 85
    :cond_c
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 86
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 87
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    if-nez v1, :cond_1e

    .line 88
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->TAG:Ljava/lang/String;

    const-string v3, "No item for the calling package in the component list."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v0

    .line 92
    :cond_1e
    const/4 v0, 0x0

    .line 93
    .local v0, "ret":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 94
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_34

    .line 97
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "Number of registered components = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 112
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 119
    .local v5, "pendingIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    const-string v6, "  - Package : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v6, "  - Number of PendingIntentWithConditions = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 125
    .local v7, "pic":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    const-string v8, "\n     - "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {v7}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-virtual {v7}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getFlag()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v7}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getConditions()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .end local v7    # "pic":Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
    goto :goto_55

    .line 130
    :cond_9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pendingIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;>;"
    goto :goto_22

    .line 132
    :cond_a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
