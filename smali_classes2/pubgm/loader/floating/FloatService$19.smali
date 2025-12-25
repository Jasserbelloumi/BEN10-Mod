.class Lpubgm/loader/floating/FloatService$19;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->aimbot(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$aimspeedmenu:Landroid/widget/LinearLayout;

.field final synthetic val$menurotation:Landroid/widget/LinearLayout;

.field final synthetic val$menutextaimtouch:Landroid/widget/TextView;

.field final synthetic val$posXmenu:Landroid/widget/LinearLayout;

.field final synthetic val$posYmenu:Landroid/widget/LinearLayout;

.field final synthetic val$recoilmenu:Landroid/widget/LinearLayout;

.field final synthetic val$recoilmenus2:Landroid/widget/LinearLayout;

.field final synthetic val$smoothnessmenu:Landroid/widget/LinearLayout;

.field final synthetic val$touchLocationmenu:Landroid/widget/LinearLayout;

.field final synthetic val$touchsizemenu:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1461
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$19;->val$menutextaimtouch:Landroid/widget/TextView;

    iput-object p3, p0, Lpubgm/loader/floating/FloatService$19;->val$menurotation:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lpubgm/loader/floating/FloatService$19;->val$aimspeedmenu:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lpubgm/loader/floating/FloatService$19;->val$smoothnessmenu:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lpubgm/loader/floating/FloatService$19;->val$touchLocationmenu:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lpubgm/loader/floating/FloatService$19;->val$touchsizemenu:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lpubgm/loader/floating/FloatService$19;->val$recoilmenu:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lpubgm/loader/floating/FloatService$19;->val$posXmenu:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lpubgm/loader/floating/FloatService$19;->val$posYmenu:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lpubgm/loader/floating/FloatService$19;->val$recoilmenus2:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 1464
    const/4 v0, 0x0

    const/16 v1, 0x8

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 1491
    :sswitch_0
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v1}, Lpubgm/loader/floating/FloatService;->access$2300(Lpubgm/loader/floating/FloatService;)V

    .line 1492
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v1}, Lpubgm/loader/floating/FloatService;->access$1500(Lpubgm/loader/floating/FloatService;)V

    .line 1493
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v1}, Lpubgm/loader/floating/FloatService;->access$1400(Lpubgm/loader/floating/FloatService;)V

    .line 1494
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$menutextaimtouch:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1495
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$menurotation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1496
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$aimspeedmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1497
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$smoothnessmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1498
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$touchLocationmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1499
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$touchsizemenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1500
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$recoilmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1501
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$recoilmenus2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1502
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$posXmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1503
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$19;->val$posYmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1504
    goto/16 :goto_0

    .line 1466
    :sswitch_1
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1500(Lpubgm/loader/floating/FloatService;)V

    .line 1467
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1400(Lpubgm/loader/floating/FloatService;)V

    .line 1468
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1600(Lpubgm/loader/floating/FloatService;)V

    .line 1469
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$menutextaimtouch:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1470
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$menurotation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1471
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$aimspeedmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$smoothnessmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1473
    goto/16 :goto_0

    .line 1507
    :sswitch_2
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$2400(Lpubgm/loader/floating/FloatService;)V

    .line 1508
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1400(Lpubgm/loader/floating/FloatService;)V

    .line 1509
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1600(Lpubgm/loader/floating/FloatService;)V

    .line 1510
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$menutextaimtouch:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1511
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$menurotation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1512
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$aimspeedmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1513
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$smoothnessmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1514
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$touchLocationmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1515
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$touchsizemenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1516
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$recoilmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1517
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$recoilmenus2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1518
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$posXmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1519
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$posYmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1476
    :sswitch_3
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v2}, Lpubgm/loader/floating/FloatService;->access$2200(Lpubgm/loader/floating/FloatService;)V

    .line 1477
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v2}, Lpubgm/loader/floating/FloatService;->access$1500(Lpubgm/loader/floating/FloatService;)V

    .line 1478
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v2}, Lpubgm/loader/floating/FloatService;->access$1600(Lpubgm/loader/floating/FloatService;)V

    .line 1479
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->val$menutextaimtouch:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1480
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->val$menurotation:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1481
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->val$aimspeedmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1482
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->val$smoothnessmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1483
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->val$touchLocationmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1484
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->val$touchsizemenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1485
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$19;->val$recoilmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$posXmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$19;->val$posYmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1488
    nop

    .line 1522
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00d6 -> :sswitch_3
        0x7f0a0113 -> :sswitch_2
        0x7f0a015f -> :sswitch_1
        0x7f0a03a0 -> :sswitch_0
    .end sparse-switch
.end method
