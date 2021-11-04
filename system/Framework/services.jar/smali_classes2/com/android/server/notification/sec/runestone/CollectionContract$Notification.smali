.class public final Lcom/android/server/notification/sec/runestone/CollectionContract$Notification;
.super Ljava/lang/Object;
.source "CollectionContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/sec/runestone/CollectionContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;
    }
.end annotation


# static fields
.field public static final CANCELED_TIME_MS:Ljava/lang/String; = "canceled_time_ms"

.field public static final CANCEL_REASON:Ljava/lang/String; = "cancel_reason"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final ENQUEUED_TIME_MS:Ljava/lang/String; = "enqueued_time_ms"

.field public static final FIRST_EXPANDED_TIME_MS:Ljava/lang/String; = "first_expanded_time_ms"

.field public static final FIRST_SHOWN_TIME_MS:Ljava/lang/String; = "first_shown_time_ms"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LOG_ID:Ljava/lang/String; = "notification"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
