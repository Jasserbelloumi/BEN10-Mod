.class public final synthetic Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lpubgm/loader/floating/FloatService;

.field public final synthetic f$1:Landroid/widget/RadioButton;

.field public final synthetic f$2:Landroid/widget/RadioButton;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$2:Landroid/widget/RadioButton;

    iput p4, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$3:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$0:Lpubgm/loader/floating/FloatService;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$2:Landroid/widget/RadioButton;

    iget v3, p0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lpubgm/loader/floating/FloatService;->lambda$setupFpsRadioButton$0$pubgm-loader-floating-FloatService(Landroid/widget/RadioButton;Landroid/widget/RadioButton;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
