.class Lcom/android/server/wm/FixedRotationAnimationController$1;
.super Ljava/lang/Object;
.source "FixedRotationAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FixedRotationAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mTransformation:Landroid/view/animation/Transformation;

.field final synthetic this$0:Lcom/android/server/wm/FixedRotationAnimationController;

.field final synthetic val$animation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FixedRotationAnimationController;Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/FixedRotationAnimationController;

    .line 169
    iput-object p1, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->this$0:Lcom/android/server/wm/FixedRotationAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance p2, Landroid/view/animation/Transformation;

    invoke-direct {p2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 189
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 199
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 200
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 201
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 202
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 175
    const/4 v0, 0x1

    return v0
.end method
