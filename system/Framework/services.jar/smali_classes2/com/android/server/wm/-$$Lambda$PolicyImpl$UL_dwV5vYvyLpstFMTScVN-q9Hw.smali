.class public final synthetic Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/PackageConfiguration;

    invoke-static {p1}, Lcom/android/server/wm/PolicyImpl;->lambda$updatePackageConfigurationsIfNeeded$1(Lcom/android/server/wm/PackageConfiguration;)V

    return-void
.end method
