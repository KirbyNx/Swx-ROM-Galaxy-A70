.class final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
.super Landroid/os/Handler;
.source "AbsCocktailBarStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarStateHandler"
.end annotation


# static fields
.field private static final MSG_COCKTAIL_NOTIFY_STATE_TO_BINDER:I = 0x33

.field private static final MSG_COCKTAIL_UPDATE_ACTIVATE:I = 0x31

.field private static final MSG_COCKTAIL_UPDATE_COCKTAIL_BAR_WINDOW_TYPE:I = 0x6

.field private static final MSG_COCKTAIL_UPDATE_POSITION:I = 0x4

.field private static final MSG_COCKTAIL_UPDATE_VISIBILITY:I = 0x1

.field private static final MSG_THREAD_EXPIRED:I = 0x65


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 239
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    .line 240
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 245
    # getter for: Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_80

    const/4 v2, 0x4

    if-eq v0, v2, :cond_70

    const/4 v2, 0x6

    if-eq v0, v2, :cond_56

    const/16 v2, 0x31

    if-eq v0, v2, :cond_43

    const/16 v1, 0x33

    if-eq v0, v1, :cond_39

    const/16 v1, 0x65

    if-eq v0, v1, :cond_33

    goto :goto_88

    .line 267
    :cond_33
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    # invokes: Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->quitHandlerThread()V
    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->access$100(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    .line 268
    goto :goto_88

    .line 264
    :cond_39
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V

    .line 265
    goto :goto_88

    .line 255
    :cond_43
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    move v0, v1

    .line 256
    .local v0, "activate":Z
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateActivate(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput-boolean v0, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 258
    goto :goto_88

    .line 260
    .end local v0    # "activate":Z
    :cond_56
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_63

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateCocktailBarWindowType(ILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 262
    goto :goto_88

    .line 251
    :cond_70
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdatePosition(I)V

    .line 252
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 253
    goto :goto_88

    .line 248
    :cond_80
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    .line 249
    nop

    .line 272
    :goto_88
    return-void
.end method
