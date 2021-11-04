.class public final synthetic Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    return p1
.end method
