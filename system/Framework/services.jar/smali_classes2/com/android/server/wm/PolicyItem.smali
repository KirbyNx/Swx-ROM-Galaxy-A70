.class final Lcom/android/server/wm/PolicyItem;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2f0880a250L


# instance fields
.field mCurrentVersion:Ljava/lang/String;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field transient mLocalVersion:I

.field mScpmVersion:I


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p1, "packageConfigurationNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/PolicyItem;->mLocalVersion:I

    .line 286
    iput v0, p0, Lcom/android/server/wm/PolicyItem;->mScpmVersion:I

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PolicyItem;->mCurrentVersion:Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PolicyItem;->mList:Ljava/util/List;

    .line 292
    new-instance v0, Lcom/android/server/wm/-$$Lambda$PolicyItem$RNhesTjYcWmdwFZgR-12uMQF-jM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$PolicyItem$RNhesTjYcWmdwFZgR-12uMQF-jM;-><init>(Lcom/android/server/wm/PolicyItem;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 293
    return-void
.end method


# virtual methods
.method isMismatch(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 296
    .local p1, "callbackNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/PolicyItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/PolicyItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_16

    goto :goto_34

    .line 299
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/PolicyItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PackageConfiguration;

    .line 300
    .local v2, "packageConfiguration":Lcom/android/server/wm/PackageConfiguration;
    iget-object v3, v2, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 301
    return v1

    .line 303
    .end local v2    # "packageConfiguration":Lcom/android/server/wm/PackageConfiguration;
    :cond_31
    goto :goto_1c

    .line 304
    :cond_32
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_34
    :goto_34
    return v1
.end method

.method public synthetic lambda$new$0$PolicyItem(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/PolicyItem;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/server/wm/PackageConfiguration;

    invoke-direct {v1, p1}, Lcom/android/server/wm/PackageConfiguration;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
