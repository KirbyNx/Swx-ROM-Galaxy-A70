.class Lcom/android/server/accessibility/gestures/GestureManifold;
.super Ljava/lang/Object;
.source "GestureManifold.java"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/GestureManifold$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GestureManifold"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/gestures/GestureMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

.field private final mMultiFingerGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/gestures/GestureMatcher;",
            ">;"
        }
    .end annotation
.end field

.field mMultiFingerGesturesEnabled:Z

.field private mServiceHandlesDoubleTap:Z

.field private mState:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold$Listener;Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/accessibility/gestures/GestureManifold$Listener;
    .param p3, "state"    # Lcom/android/server/accessibility/gestures/TouchState;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    .line 107
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    .line 108
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mHandler:Landroid/os/Handler;

    .line 109
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    .line 110
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 111
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 114
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/MultiTap;

    const/4 v3, 0x2

    const/16 v4, 0x11

    invoke-direct {v2, p1, v3, v4, p0}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    const/16 v5, 0x12

    invoke-direct {v2, p1, v3, v5, p0}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;

    invoke-direct {v2, p1, v3, v4, p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v2, p1, v4, v5, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v5, 0x3

    invoke-direct {v2, p1, v0, v5, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v1, p1, v3, v4, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v1, p1, v5, v3, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x0

    const/4 v5, 0x5

    move-object v1, v7

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x2

    const/16 v5, 0x9

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x3

    const/16 v5, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0xb

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x3

    const/16 v5, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x1

    const/16 v5, 0x10

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x7

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x1

    const/16 v5, 0xe

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x13

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/16 v5, 0x14

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x28

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x15

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x2b

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x16

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/16 v5, 0x17

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x29

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x18

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/16 v5, 0x2c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x2d

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x25

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/16 v5, 0x26

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x2a

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x27

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x3

    const/16 v5, 0x1e

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x0

    const/16 v5, 0x1f

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x2

    const/16 v5, 0x1d

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x22

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x0

    const/16 v5, 0x23

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x1

    const/16 v5, 0x24

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x2

    const/16 v5, 0x21

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "gestureId"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "policyFlags"    # I

    .line 345
    const/16 v0, 0x11

    if-eq p1, v0, :cond_33

    const/16 v0, 0x12

    if-eq p1, v0, :cond_17

    .line 367
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    .line 369
    .local v0, "gestureEvent":Landroid/accessibilityservice/AccessibilityGestureEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    goto :goto_4f

    .line 357
    .end local v0    # "gestureEvent":Landroid/accessibilityservice/AccessibilityGestureEvent;
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_2a

    .line 358
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    .line 360
    .restart local v0    # "gestureEvent":Landroid/accessibilityservice/AccessibilityGestureEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    .line 361
    .end local v0    # "gestureEvent":Landroid/accessibilityservice/AccessibilityGestureEvent;
    goto :goto_2f

    .line 362
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 364
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 365
    goto :goto_4f

    .line 347
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_46

    .line 348
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    .line 350
    .restart local v0    # "gestureEvent":Landroid/accessibilityservice/AccessibilityGestureEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    .line 351
    .end local v0    # "gestureEvent":Landroid/accessibilityservice/AccessibilityGestureEvent;
    goto :goto_4b

    .line 352
    :cond_46
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    .line 354
    :goto_4b
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 355
    nop

    .line 372
    :goto_4f
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 262
    .local v1, "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 263
    .end local v1    # "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    goto :goto_6

    .line 264
    :cond_16
    return-void
.end method

.method public isMultiFingerGesturesEnabled()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    return v0
.end method

.method public isServiceHandlesDoubleTapEnabled()Z
    .registers 2

    .line 394
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    return v0
.end method

.method onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 228
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_13

    .line 232
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    goto :goto_14

    .line 236
    :cond_13
    return v1

    .line 239
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 240
    .local v2, "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3c

    .line 244
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I

    .line 248
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 251
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 253
    const/4 v0, 0x1

    return v0

    .line 256
    .end local v2    # "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    :cond_3c
    goto :goto_1a

    .line 257
    :cond_3d
    return v1
.end method

.method public onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10
    .param p1, "gestureId"    # I
    .param p2, "state"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "rawEvent"    # Landroid/view/MotionEvent;
    .param p5, "policyFlags"    # I

    .line 316
    const/4 v0, 0x1

    if-ne p2, v0, :cond_24

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v1

    if-nez v1, :cond_24

    .line 317
    const/16 v0, 0x11

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x12

    if-ne p1, v0, :cond_14

    goto :goto_1a

    .line 322
    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureStarted()Z

    goto :goto_55

    .line 318
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_55

    .line 319
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureStarted()Z

    goto :goto_55

    .line 324
    :cond_24
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2b

    .line 325
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/accessibility/gestures/GestureManifold;->onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_55

    .line 326
    :cond_2b
    const/4 v1, 0x3

    if-ne p2, v1, :cond_55

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 329
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 330
    .local v2, "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    if-ne v3, v0, :cond_4f

    .line 331
    return-void

    .line 333
    .end local v2    # "matcher":Lcom/android/server/accessibility/gestures/GestureMatcher;
    :cond_4f
    goto :goto_3c

    .line 337
    :cond_50
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0, p3, p4, p5}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    .line 339
    :cond_55
    :goto_55
    return-void
.end method

.method public setMultiFingerGesturesEnabled(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .line 379
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eq v0, p1, :cond_17

    .line 380
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 381
    if-eqz p1, :cond_10

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    .line 384
    :cond_10
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 387
    :cond_17
    :goto_17
    return-void
.end method

.method public setServiceHandlesDoubleTap(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .line 390
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 391
    return-void
.end method
