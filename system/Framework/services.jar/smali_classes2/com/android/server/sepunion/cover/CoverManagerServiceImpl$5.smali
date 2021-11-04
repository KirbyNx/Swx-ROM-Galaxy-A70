.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 181
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverTestModeChanged(IZ)V
    .registers 11
    .param p1, "coverType"    # I
    .param p2, "isEnabled"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1200(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 186
    const/16 v0, 0xff

    if-ne p1, v0, :cond_1f

    .line 187
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    const/4 v2, 0x1

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZ)V

    .line 189
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, p2, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1300(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V

    .line 190
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    goto :goto_26

    .line 191
    :cond_1f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    invoke-static {v0, p2, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1400(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    .line 194
    :cond_26
    :goto_26
    return-void
.end method
