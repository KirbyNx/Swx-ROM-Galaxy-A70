.class public final synthetic Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .registers 6

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method
