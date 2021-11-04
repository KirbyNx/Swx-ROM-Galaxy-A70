.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/AppPairController;->lambda$adjustIntentInStartSplitScreenMode$6(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p1

    return p1
.end method
