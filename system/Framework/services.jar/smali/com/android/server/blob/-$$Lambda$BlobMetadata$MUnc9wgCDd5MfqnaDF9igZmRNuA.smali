.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;

    invoke-direct {v0}, Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;-><init>()V

    sput-object v0, Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;->INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobMetadata$MUnc9wgCDd5MfqnaDF9igZmRNuA;

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

    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-static {p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeExpiredLeases$4(Lcom/android/server/blob/BlobMetadata$Leasee;)Z

    move-result p1

    return p1
.end method
