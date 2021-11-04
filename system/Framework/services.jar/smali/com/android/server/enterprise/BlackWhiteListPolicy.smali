.class public Lcom/android/server/enterprise/BlackWhiteListPolicy;
.super Ljava/lang/Object;
.source "BlackWhiteListPolicy.java"


# static fields
.field private static final ALLOBJECTS:Ljava/lang/String; = "*"

.field private static final BLACK:Ljava/lang/String; = "black"

.field private static final WHITE:Ljava/lang/String; = "white"

.field private static final mTAG:Ljava/lang/String; = "BlackWhiteListPolicyService"


# instance fields
.field private bUpdateToDB:Z

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEffectiveBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectiveWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "table"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 70
    iput-object p1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    iput-object p2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private addList(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 349
    .local p1, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 350
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 351
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 352
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-void

    .line 355
    :cond_1c
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    .end local v0    # "i":I
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    .line 359
    return-void
.end method

.method private addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z
    .registers 12
    .param p1, "adminUID"    # I
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 154
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 155
    .local v0, "ret":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 157
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v2, "where":Landroid/content/ContentValues;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Object"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "adminUid"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "ListType"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v6, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    .line 167
    if-nez v0, :cond_4d

    .line 168
    const/4 v3, 0x0

    return v3

    .line 156
    .end local v2    # "where":Landroid/content/ContentValues;
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 171
    .end local v1    # "i":I
    :cond_50
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 172
    const/4 v1, 0x1

    return v1
.end method

.method private clearObjectsFromList(ILjava/lang/String;)Z
    .registers 7
    .param p1, "adminUID"    # I
    .param p2, "listType"    # Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "ret":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v1, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v2, "ListType"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    .line 197
    const/4 v2, -0x1

    if-ne v0, v2, :cond_21

    .line 198
    const/4 v2, 0x0

    return v2

    .line 199
    :cond_21
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 200
    const/4 v2, 0x1

    return v2
.end method

.method private createEffectiveList(ILjava/util/List;Ljava/util/List;)V
    .registers 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p2, "effectiveblacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "effectivewhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 259
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "black"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 262
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 263
    const-string/jumbo v2, "white"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 264
    invoke-direct {p0, p3, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 265
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectiveblacklist for admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "effectivewhitelist for admin "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 270
    return-void
.end method

.method private createEffectiveListAllAdmins(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "finalblacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "finalwhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 283
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v0, "effectiveblacklists":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v1, "effectivewhitelists":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 293
    .local v2, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ": "

    if-eqz v4, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 294
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->isPolicyActive(I)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->createEffectiveList(ILjava/util/List;Ljava/util/List;)V

    .line 298
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finalblacklist after adding admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 302
    .end local v4    # "uid":I
    :cond_89
    goto :goto_1a

    .line 306
    :cond_8a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 307
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v6, v7, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractWhitelistFromOthersBlacklists(ILjava/util/List;Ljava/util/Map;)V

    .line 308
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finalwhitelist after adding admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 311
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_92

    .line 313
    :cond_da
    return-void
.end method

.method private getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V
    .registers 13
    .param p1, "adminUID"    # I
    .param p2, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "BlackWhiteListPolicyService"

    const-string v1, "Object"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 210
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    const-string v5, "ListType"

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v8, v2

    .line 212
    if-eqz v8, :cond_2f

    .line 213
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 214
    :goto_1b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 215
    nop

    .line 216
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 215
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "object":Ljava/lang/String;
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_2d} :catch_37
    .catchall {:try_start_9 .. :try_end_2d} :catchall_35

    .line 218
    nop

    .end local v2    # "object":Ljava/lang/String;
    goto :goto_1b

    .line 223
    :cond_2f
    if-eqz v8, :cond_54

    .line 224
    :goto_31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_54

    .line 223
    :catchall_35
    move-exception v0

    goto :goto_5b

    .line 220
    :catch_37
    move-exception v1

    .line 221
    .local v1, "sqlEx":Landroid/database/SQLException;
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_35

    .line 223
    nop

    .end local v1    # "sqlEx":Landroid/database/SQLException;
    if-eqz v8, :cond_54

    .line 224
    goto :goto_31

    .line 227
    :cond_54
    :goto_54
    const-string/jumbo v1, "getAllObjectsFromList:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 223
    :goto_5b
    if-eqz v8, :cond_60

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_60
    throw v0
.end method

.method private getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ControlInfo;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/ControlInfo;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 236
    .local v1, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 237
    .local v3, "uid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v4, "objlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 239
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 240
    new-instance v5, Lcom/samsung/android/knox/ControlInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/ControlInfo;-><init>()V

    .line 241
    .local v5, "info":Lcom/samsung/android/knox/ControlInfo;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/ControlInfo;->adminPackageName:Ljava/lang/String;

    .line 242
    iput-object v4, v5, Lcom/samsung/android/knox/ControlInfo;->entries:Ljava/util/List;

    .line 243
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v3    # "uid":I
    .end local v4    # "objlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "info":Lcom/samsung/android/knox/ControlInfo;
    :cond_3d
    goto :goto_f

    .line 247
    :cond_3e
    const-string v2, "BlackWhiteListPolicyService"

    const-string/jumbo v3, "getAllObjectsFromLists:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logList(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlackWhiteListPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method private removeDuplicates(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 326
    return-void

    .line 327
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 328
    .local v0, "uniqueobjects":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    return-void
.end method

.method private removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z
    .registers 9
    .param p1, "adminUID"    # I
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 176
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "ret":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 179
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v2, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Object"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v3, "ListType"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    .line 184
    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    .line 185
    const/4 v3, 0x0

    return v3

    .line 178
    .end local v2    # "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 187
    .end local v1    # "i":I
    :cond_39
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 188
    const/4 v1, 0x1

    return v1
.end method

.method private subtractList(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 338
    .local p1, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 339
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 340
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 341
    return-void

    .line 343
    :cond_19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method private subtractWhitelistFromOthersBlacklists(ILjava/util/List;Ljava/util/Map;)V
    .registers 7
    .param p1, "admin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 363
    .local p2, "effectivewhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "alleffectiveblacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 364
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_29

    .line 365
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    .line 367
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_29
    goto :goto_8

    .line 368
    :cond_2a
    return-void
.end method

.method private updateEffectivePolicy()V
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->createEffectiveListAllAdmins(Ljava/util/List;Ljava/util/List;)V

    .line 318
    return-void
.end method


# virtual methods
.method public addObjectsToBlackList(ILjava/util/List;)Z
    .registers 4
    .param p1, "adminUID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 82
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "black"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addObjectsToWhiteList(ILjava/util/List;)Z
    .registers 4
    .param p1, "adminUID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 98
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "white"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearObjectsFromBlackList(I)Z
    .registers 3
    .param p1, "adminUID"    # I

    .line 90
    const-string v0, "black"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearObjectsFromWhiteList(I)Z
    .registers 3
    .param p1, "adminUID"    # I

    .line 106
    const-string/jumbo v0, "white"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ControlInfo;",
            ">;"
        }
    .end annotation

    .line 94
    const-string v0, "black"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ControlInfo;",
            ">;"
        }
    .end annotation

    .line 110
    const-string/jumbo v0, "white"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    if-nez v0, :cond_a

    .line 123
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getEffectiveWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    if-eqz v0, :cond_a

    .line 115
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    return-object v0
.end method

.method public isObjectAllowed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "*"

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2f

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2e

    .line 132
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 135
    :cond_2e
    :goto_2e
    return v5

    .line 137
    .end local v2    # "i":I
    :cond_2f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_52

    .line 137
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 140
    :cond_52
    :goto_52
    const/4 v3, 0x0

    return v3

    .line 142
    .end local v2    # "i":I
    :cond_54
    return v5
.end method

.method public isPolicyActive(I)Z
    .registers 3
    .param p1, "adminUid"    # I

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public reload()Z
    .registers 2

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public removeObjectsFromBlackList(ILjava/util/List;)Z
    .registers 4
    .param p1, "adminUID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 86
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "black"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeObjectsFromWhiteList(ILjava/util/List;)Z
    .registers 4
    .param p1, "adminUID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 102
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "white"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
