.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$10:Lcom/android/server/net/NetworkStatsService;

.field public final synthetic f$11:Lcom/android/server/net/UrspService;

.field public final synthetic f$12:Lcom/samsung/accessory/manager/SAccessoryManager;

.field public final synthetic f$13:Landroid/os/IBinder;

.field public final synthetic f$14:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$15:Lcom/android/server/NetworkTimeUpdateService;

.field public final synthetic f$16:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$17:Lcom/android/server/input/CameraMotorManagerService;

.field public final synthetic f$18:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$19:Lcom/android/server/media/MediaRouterService;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$20:Lcom/android/server/MmsServiceBroker;

.field public final synthetic f$3:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/android/server/ConnectivityService;

.field public final synthetic f$7:Lcom/android/server/NetworkManagementService;

.field public final synthetic f$8:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$9:Lcom/android/server/IpSecService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/UrspService;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/CameraMotorManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 24

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$0:Lcom/android/server/SystemServer;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$2:Landroid/content/Context;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$3:Lcom/android/server/wm/WindowManagerService;

    move v1, p5

    iput-boolean v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$4:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$5:Z

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$6:Lcom/android/server/ConnectivityService;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$7:Lcom/android/server/NetworkManagementService;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$8:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$9:Lcom/android/server/IpSecService;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$10:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$11:Lcom/android/server/net/UrspService;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$12:Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$13:Landroid/os/IBinder;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$14:Lcom/android/server/CountryDetectorService;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$15:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$16:Lcom/android/server/input/InputManagerService;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$17:Lcom/android/server/input/CameraMotorManagerService;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$18:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$19:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$20:Lcom/android/server/MmsServiceBroker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$0:Lcom/android/server/SystemServer;

    iget-object v2, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v3, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$2:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$3:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$4:Z

    iget-boolean v6, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$5:Z

    iget-object v7, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$6:Lcom/android/server/ConnectivityService;

    iget-object v8, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$7:Lcom/android/server/NetworkManagementService;

    iget-object v9, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$8:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v10, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$9:Lcom/android/server/IpSecService;

    iget-object v11, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$10:Lcom/android/server/net/NetworkStatsService;

    iget-object v12, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$11:Lcom/android/server/net/UrspService;

    iget-object v13, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$12:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v14, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$13:Landroid/os/IBinder;

    iget-object v15, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$14:Lcom/android/server/CountryDetectorService;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$15:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$16:Lcom/android/server/input/InputManagerService;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$17:Lcom/android/server/input/CameraMotorManagerService;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$18:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$19:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v20, v1

    iget-object v0, v0, Lcom/android/server/-$$Lambda$SystemServer$V0CdAJqnfXx-YkwzSwvZgEg9V_Q;->f$20:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v21, v0

    move-object/from16 v1, v22

    invoke-virtual/range {v1 .. v21}, Lcom/android/server/SystemServer;->lambda$startOtherServices$7$SystemServer(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;ZZLcom/android/server/ConnectivityService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/UrspService;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/CameraMotorManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method
