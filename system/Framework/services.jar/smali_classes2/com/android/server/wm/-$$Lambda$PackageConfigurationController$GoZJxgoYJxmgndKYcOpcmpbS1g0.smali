.class public final synthetic Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$GoZJxgoYJxmgndKYcOpcmpbS1g0;

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

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/wm/PolicyImpl;

    invoke-static {p1, p2}, Lcom/android/server/wm/PackageConfigurationController;->lambda$executeShellCommand$5(Ljava/lang/String;Lcom/android/server/wm/PolicyImpl;)V

    return-void
.end method
