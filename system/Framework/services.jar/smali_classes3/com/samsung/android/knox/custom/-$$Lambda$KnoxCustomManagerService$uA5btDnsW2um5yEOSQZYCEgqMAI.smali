.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$uA5btDnsW2um5yEOSQZYCEgqMAI;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setWifiStateEap$53$KnoxCustomManagerService(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
