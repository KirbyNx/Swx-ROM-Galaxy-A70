.class Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(I)V
    .registers 4
    .param p1, "newItem"    # I

    .line 328
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 329
    .local v1, "entry":I
    if-ne v1, p1, :cond_19

    .line 330
    return-void

    .line 329
    .end local v1    # "entry":I
    :cond_19
    goto :goto_6

    .line 332
    :cond_1a
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method isSupported(I)Z
    .registers 4
    .param p1, "t"    # I

    .line 320
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 321
    .local v1, "entry":I
    if-ne v1, p1, :cond_1a

    .line 322
    const/4 v0, 0x1

    return v0

    .line 321
    .end local v1    # "entry":I
    :cond_1a
    goto :goto_6

    .line 324
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
