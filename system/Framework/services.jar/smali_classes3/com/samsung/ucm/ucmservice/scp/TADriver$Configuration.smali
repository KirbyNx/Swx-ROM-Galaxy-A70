.class Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/scp/TADriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;
    }
.end annotation


# instance fields
.field protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/ucm/ucmservice/scp/TADriver$1;

    .line 314
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>()V

    return-void
.end method
