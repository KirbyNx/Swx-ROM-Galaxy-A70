.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$hasOtherProfileWithPackageInstalled$9$CrossProfileAppsServiceImpl(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method