.class public final synthetic Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;->INSTANCE:Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->setLongLiveProcess(I)V

    return-void
.end method
