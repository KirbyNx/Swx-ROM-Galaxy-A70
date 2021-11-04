.class Lcom/android/server/display/MagnifierSurfaceControl$1;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 130
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Z)V
    .registers 9
    .param p1, "changeSurface"    # Z

    .line 133
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->access$000(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 134
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 136
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p1, :cond_29

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentFollowingStatus:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$200()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    .line 137
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getRotation()I

    move-result v2

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v2, v3, :cond_29

    .line 138
    monitor-exit v0

    return-void

    .line 142
    :cond_29
    if-eqz p1, :cond_59

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$300(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 143
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl;->hide()V
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$400(Lcom/android/server/display/MagnifierSurfaceControl;)V

    .line 144
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$500(Lcom/android/server/display/MagnifierSurfaceControl;)V

    .line 145
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$600(Lcom/android/server/display/MagnifierSurfaceControl;)V

    .line 146
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 147
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onChangeSurface(Landroid/view/Surface;)V

    .line 150
    :cond_59
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$900()Lcom/android/server/display/MagnifierSurfaceControl$Control;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 151
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$900()Lcom/android/server/display/MagnifierSurfaceControl$Control;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->dismiss()V

    .line 154
    :cond_66
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1000()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 155
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v2

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1000()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPrecision()V

    .line 157
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1000()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    .line 161
    :cond_8d
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 162
    .local v2, "defaultDisplay":Landroid/view/Display;
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1100(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v3

    if-lez v3, :cond_b7

    .line 163
    new-instance v3, Lcom/android/server/display/MagnifierSurfaceControl$Control;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1200(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v6}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Control;-><init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$902(Lcom/android/server/display/MagnifierSurfaceControl$Control;)Lcom/android/server/display/MagnifierSurfaceControl$Control;

    .line 165
    :cond_b7
    new-instance v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1200(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v6}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1002(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 167
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mState:I
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1300(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_de

    .line 168
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v4, 0x3

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mState:I
    invoke-static {v3, v4}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1302(Lcom/android/server/display/MagnifierSurfaceControl;I)I

    .line 170
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v2    # "defaultDisplay":Landroid/view/Display;
    :cond_de
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_e0
    move-exception v1

    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_7 .. :try_end_e2} :catchall_e0

    throw v1
.end method
