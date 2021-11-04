.class public Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents$Keys;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# static fields
.field public static final CV:Ljava/lang/String; = "cv"

.field public static final PLAIN_EVENTS_SIZE:Ljava/lang/String; = "plainEventsSize"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
